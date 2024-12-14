import 'package:flutter/foundation.dart';
import 'package:unsplash_clone/main/list_photos_dto_mapper/list_photos_dto_mapper.dart';
import 'package:unsplash_clone/network/dto/list_photos/list_photos_dto.dart';
import 'package:unsplash_clone/service/service_provider.dart';
import 'package:unsplash_clone/util/logger.dart';
import 'package:unsplash_clone/util/notifier.dart';

class MainPageViewModel {
  final _photosService = ServiceProvider().photosService;
  final _listPhotosDtoMapper = ListPhotosDtoMapper();

  final _listPhotosDtosNotifier = ValueNotifier<List<ListPhotosDto>>([]);
  ValueListenable<List<ListPhotosDto>> get listPhotosDtosListenable =>
      _listPhotosDtosNotifier;
  List<ListPhotosDto> get listPhotosDtos => _listPhotosDtosNotifier.value;

  final _errorNotifer = Notifier();
  Listenable get errorListenable => _errorNotifer;

  ValueNotifier<bool>? _isLoadingOverlayVisibilityNotifier;

  Future<void> fetchListPhotos() async {
    _showLoadingIndicator();

    try {
      final listPhotosEntity = await _photosService.fetchListPhotos(
        page: 1,
        perPage: 10,
      );
      final listPhotosDtos = listPhotosEntity.map((entity) {
        return _listPhotosDtoMapper.mapToDto(entity);
      }).toList();

      _listPhotosDtosNotifier.value = listPhotosDtos;
    } catch (error) {
      logError('error');
      _errorNotifer.notify();
    } finally {
      _hideLoadingIndicator();
    }
  }

  void _showLoadingIndicator() {
    _isLoadingOverlayVisibilityNotifier?.value = true;
  }

  void _hideLoadingIndicator() {
    _isLoadingOverlayVisibilityNotifier?.value = false;
  }

  void setIsLoadingOverlayVisibilityNotifier(
      ValueNotifier<bool> isLoadingOverlayVisibilityNotifier) {
    _isLoadingOverlayVisibilityNotifier = isLoadingOverlayVisibilityNotifier;
  }
}
