import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/half_screen_width_picture_item/half_screen_width_picture_item.dart';
import 'package:unsplash_clone/main/main_page_layout_type/main_page_layout_type.dart';
import 'package:unsplash_clone/main/max_screen_width_picture_item/max_screen_width_picture_item.dart';
import 'package:unsplash_clone/main/topic_photos_screen/blur_hash_photo_submit_widget.dart';
import 'package:unsplash_clone/main/topic_photos_screen/topic_photos_screen_view_model.dart';
import 'package:unsplash_clone/util/mixin/toast_message_mixin.dart';
import 'package:unsplash_clone/util/widget/loading_overlay.dart';
import 'package:unsplash_clone/util/widget/loading_overlay_view_model.dart';

class TopicPhotosScreen extends StatefulWidget {
  final String _topicId;
  final String _title;
  final String _description;
  final MainPageLayoutType _mainPageLayoutType;

  const TopicPhotosScreen({
    required String topicId,
    required String title,
    required String description,
    required MainPageLayoutType mainPageLayoutType,
    super.key,
  })  : _topicId = topicId,
        _title = title,
        _description = description,
        _mainPageLayoutType = mainPageLayoutType;

  @override
  State<TopicPhotosScreen> createState() => _TopicPhotosScreenState();
}

class _TopicPhotosScreenState extends State<TopicPhotosScreen>
    with ToastMessageMixin {
  late final TopicPhotosScreenViewModel _topicPhotosScreenViewModel;
  final _loadingOverlayViewModel = LoadingOverlayViewModel();

  @override
  void initState() {
    super.initState();

    _initProperties();
    _addListeners();
    _addPostFrameCallBack();
  }

  @override
  void dispose() {
    _removeListeners();

    super.dispose();
  }

  void _initProperties() {
    _topicPhotosScreenViewModel = context.read<TopicPhotosScreenViewModel>();
    _topicPhotosScreenViewModel.setIsLoadingOverlayVisibilityNotifier(
        _loadingOverlayViewModel.loadingOverlayVisibilityNotifier);
  }

  void _addListeners() {
    _topicPhotosScreenViewModel.listPhotosDtosListenable
        .addListener(_refreshWidget);
    _topicPhotosScreenViewModel.errorListenable.addListener(_handleError);
  }

  void _removeListeners() {
    _topicPhotosScreenViewModel.listPhotosDtosListenable
        .removeListener(_refreshWidget);
    _topicPhotosScreenViewModel.errorListenable.removeListener(_handleError);
  }

  void _addPostFrameCallBack() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _topicPhotosScreenViewModel.fetchToipicPhotos(widget._topicId);
      }
    });
  }

  void _handleError() {
    showToastMessage('에러 발생', context);
  }

  void _refreshWidget() {
    setState(() {});
  }

  void _appendExistingListPhotosDtos() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _topicPhotosScreenViewModel
            .appendExistingListPhotosDtos(widget._topicId);
      }
    });
  }

  Widget _buildLoadingOverlay() {
    return LoadingOverlay(loadingOverlayViewModel: _loadingOverlayViewModel);
  }

  Widget _buildBasicImageListItem(BuildContext context, int index) {
    if (index == _topicPhotosScreenViewModel.listPhotosDtos.length - 3) {
      _appendExistingListPhotosDtos();
    }

    final dto = _topicPhotosScreenViewModel.listPhotosDtos[index];

    return MaxScreenWidthPictureItem(dto: dto);
  }

  Widget _buildWaterfallImageListItem(BuildContext context, int index) {
    if (index == _topicPhotosScreenViewModel.listPhotosDtos.length - 4) {
      _appendExistingListPhotosDtos();
    }

    final dto = _topicPhotosScreenViewModel.listPhotosDtos[index];

    return HalfScreenWidthPictureItem(dto: dto);
  }

  Widget _buildSliverImageListView() {
    switch (widget._mainPageLayoutType) {
      case MainPageLayoutType.basic:
        return _buildBasicLayout();
      case MainPageLayoutType.waterfall:
        return _buildWaterfallLayout();
    }
  }

  Widget _buildBlurHashPhotoSubmitButton() {
    return BlurHashPhotoSubmitWidget(
      title: widget._title,
      descrption: widget._description,
    );
  }

  Widget _buildBasicLayout() {
    return SliverList.builder(
      itemCount: _topicPhotosScreenViewModel.listPhotosDtos.length,
      itemBuilder: _buildBasicImageListItem,
    );
  }

  Widget _buildWaterfallLayout() {
    return SliverMasonryGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: _topicPhotosScreenViewModel.listPhotosDtos.length,
        _buildWaterfallImageListItem,
      ),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
    );
  }

  Widget _buildImageListView() {
    return SizedBox.expand(
      child: CustomScrollView(
        slivers: [
          _buildBlurHashPhotoSubmitButton(),
          _buildSliverImageListView(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildImageListView(),
        _buildLoadingOverlay(),
      ],
    );
  }
}
