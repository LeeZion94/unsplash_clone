import 'package:flutter/foundation.dart';
import 'package:unsplash_clone/main/list_topics_dto_mapper/list_topics_dto_mapper.dart';
import 'package:unsplash_clone/main/main_page_layout_type/main_page_layout_type.dart';
import 'package:unsplash_clone/network/dto/list_topics/list_topics_dto.dart';
import 'package:unsplash_clone/service/service_provider.dart';
import 'package:unsplash_clone/util/logger.dart';

class MainPageViewModel {
  final _topicsService = ServiceProvider().topicsService;
  final _listTopicsDtoMapper = ListTopicsDtoMapper();

  final _listTopicsDtosNotifier = ValueNotifier<List<ListTopicsDto>>([]);
  ValueListenable<List<ListTopicsDto>> get listTopicsDtosListenable =>
      _listTopicsDtosNotifier;
  List<ListTopicsDto> get listTopicsDtos => _listTopicsDtosNotifier.value;

  final _mainPageLayoutTypeNotifier = ValueNotifier(MainPageLayoutType.basic);
  ValueListenable<MainPageLayoutType> get mainPageLayoutTypeListenable =>
      _mainPageLayoutTypeNotifier;
  MainPageLayoutType get mainPageLayoutType =>
      _mainPageLayoutTypeNotifier.value;

  ValueNotifier<bool>? _isLoadingOverlayVisibilityNotifier;

  void fetchListTopics() async {
    _showLoadingIndicator();

    try {
      final listTopicsEntity = await _topicsService.fetchListTopics();
      final listTopicsDtos = listTopicsEntity.map((element) {
        return _listTopicsDtoMapper.mapToDto(element);
      }).toList();

      _listTopicsDtosNotifier.value = listTopicsDtos;
    } catch (error) {
      logError('$error');
    } finally {
      _hideLoadingIndicator();
    }
  }

  void changeLayoutType() {
    final mainPageLayoutType = _mainPageLayoutTypeNotifier.value;

    _mainPageLayoutTypeNotifier.value =
        mainPageLayoutType == MainPageLayoutType.basic
            ? MainPageLayoutType.waterfall
            : MainPageLayoutType.basic;
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
