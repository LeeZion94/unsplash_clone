import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/max_screen_width_picture_item/max_screen_width_picture_item.dart';
import 'package:unsplash_clone/main/topic_photos_screen/topic_photos_screen_view_model.dart';
import 'package:unsplash_clone/util/mixin/toast_message_mixin.dart';
import 'package:unsplash_clone/util/widget/loading_overlay.dart';
import 'package:unsplash_clone/util/widget/loading_overlay_view_model.dart';

class TopicPhotosScreen extends StatefulWidget {
  final String _topicId;

  const TopicPhotosScreen({
    required String topicId,
    super.key,
  }) : _topicId = topicId;

  @override
  State<TopicPhotosScreen> createState() => _TopicPhotosScreenState();
}

class _TopicPhotosScreenState extends State<TopicPhotosScreen>
    with ToastMessageMixin {
  late final TopicPhotosScreenViewModel _topicPicturesScreenViewModel;
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
    _topicPicturesScreenViewModel = context.read<TopicPhotosScreenViewModel>();
    _topicPicturesScreenViewModel.setIsLoadingOverlayVisibilityNotifier(
        _loadingOverlayViewModel.loadingOverlayVisibilityNotifier);
  }

  void _addListeners() {
    _topicPicturesScreenViewModel.listPhotosDtosListenable
        .addListener(_refreshWidget);
    _topicPicturesScreenViewModel.errorListenable.addListener(_handleError);
  }

  void _removeListeners() {
    _topicPicturesScreenViewModel.listPhotosDtosListenable
        .removeListener(_refreshWidget);
    _topicPicturesScreenViewModel.errorListenable.removeListener(_handleError);
  }

  void _addPostFrameCallBack() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _topicPicturesScreenViewModel.fetchToipicPhotos(widget._topicId);
      }
    });
  }

  void _handleError() {
    showToastMessage('Error Occurred', context);
  }

  void _refreshWidget() {
    setState(() {});
  }

  void _appendExistingListPhotosDtos() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _topicPicturesScreenViewModel
            .appendExistingListPhotosDtos(widget._topicId);
      }
    });
  }

  Widget _buildLoadingOverlay() {
    return LoadingOverlay(loadingOverlayViewModel: _loadingOverlayViewModel);
  }

  Widget _buildImageListItem(BuildContext context, int index) {
    if (index == _topicPicturesScreenViewModel.listPhotosDtos.length - 3) {
      _appendExistingListPhotosDtos();
    }

    final dto = _topicPicturesScreenViewModel.listPhotosDtos[index];

    return MaxScreenWidthPictureItem(dto: dto);
  }

  Widget _buildImageListView() {
    return SizedBox.expand(
      child: ListView.builder(
        cacheExtent: 1000,
        itemCount: _topicPicturesScreenViewModel.listPhotosDtos.length,
        itemBuilder: _buildImageListItem,
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
