import 'package:flutter/foundation.dart';
import 'package:unsplash_clone/main/list_photos_dto_mapper/list_photos_dto_mapper.dart';
import 'package:unsplash_clone/network/dto/list_photos/list_photos_dto.dart';
import 'package:unsplash_clone/service/service_provider.dart';
import 'package:unsplash_clone/util/logger.dart';
import 'package:unsplash_clone/util/notifier.dart';

class TopicPhotosScreenViewModel {
  final _topicsService = ServiceProvider().topicsService;
  final _listPhotosDtoMapper = ListPhotosDtoMapper();

  int pageCount = 1;
  final _perPageItemCount = 10;

  final _listPhotosDtosNotifier = ValueNotifier<List<ListPhotosDto>>([]);
  ValueListenable<List<ListPhotosDto>> get listPhotosDtosListenable =>
      _listPhotosDtosNotifier;
  List<ListPhotosDto> get listPhotosDtos => _listPhotosDtosNotifier.value;

  bool get isDtoEmpty => _listPhotosDtosNotifier.value.isEmpty;

  String get submitButtonBlurHash =>
      _listPhotosDtosNotifier.value.first.blurHash;

  final _errorNotifer = Notifier();
  Listenable get errorListenable => _errorNotifer;

  ValueNotifier<bool>? _isLoadingOverlayVisibilityNotifier;

  Future<void> fetchToipicPhotos(String topicId) async {
    _showLoadingIndicator();

    try {
      await appendExistingListPhotosDtos(topicId);
    } catch (error) {
      logError('error');
      _errorNotifer.notify();
    } finally {
      _hideLoadingIndicator();
    }
  }

  Future<void> appendExistingListPhotosDtos(String topicId) async {
    try {
      final listPhotosEntity = await _topicsService.fetchTopicPhotos(
        topicId: topicId,
        page: pageCount,
        perPage: _perPageItemCount,
      );
      final listPhotosDtos = listPhotosEntity.map((entity) {
        return _listPhotosDtoMapper.mapToDto(entity);
      }).toList();

      _appendListPhotosDtos(listPhotosDtos);
      _setPageCount();
    } catch (error) {
      logError('$error');
      _errorNotifer.notify();
    }
  }

  void _appendListPhotosDtos(List<ListPhotosDto> listPhotosDtos) {
    final exisitingListPhotosDtos = _listPhotosDtosNotifier.value;

    _listPhotosDtosNotifier.value = List.from(exisitingListPhotosDtos)
      ..addAll(listPhotosDtos);
  }

  void _setPageCount() {
    pageCount += 1;
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
