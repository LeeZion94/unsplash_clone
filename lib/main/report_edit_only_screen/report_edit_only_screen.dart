import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/max_screen_width_picture_item/max_screen_width_picture_item.dart';
import 'package:unsplash_clone/main/report_edit_only_screen/reposrt_edit_only_screen_view_model.dart';
import 'package:unsplash_clone/util/mixin/toast_message_mixin.dart';
import 'package:unsplash_clone/util/widget/loading_overlay.dart';
import 'package:unsplash_clone/util/widget/loading_overlay_view_model.dart';

class ReportEditOnlyScreen extends StatefulWidget {
  const ReportEditOnlyScreen({super.key});

  @override
  State<ReportEditOnlyScreen> createState() => _ReportEditOnlyScreenState();
}

class _ReportEditOnlyScreenState extends State<ReportEditOnlyScreen>
    with ToastMessageMixin {
  late final ReportEditOnlyScreenViewModel _reportEditOnlyScreenViewModel;
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
    _reportEditOnlyScreenViewModel =
        context.read<ReportEditOnlyScreenViewModel>();
    _reportEditOnlyScreenViewModel.setIsLoadingOverlayVisibilityNotifier(
        _loadingOverlayViewModel.loadingOverlayVisibilityNotifier);
  }

  void _addListeners() {
    _reportEditOnlyScreenViewModel.listPhotosDtosListenable
        .addListener(_refreshWidget);
    _reportEditOnlyScreenViewModel.errorListenable.addListener(_handleError);
  }

  void _removeListeners() {
    _reportEditOnlyScreenViewModel.listPhotosDtosListenable
        .removeListener(_refreshWidget);
    _reportEditOnlyScreenViewModel.errorListenable.removeListener(_handleError);
  }

  void _addPostFrameCallBack() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _reportEditOnlyScreenViewModel.fetchListPhotos();
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
        _reportEditOnlyScreenViewModel.appendExistingListPhotosDtos();
      }
    });
  }

  Widget _buildLoadingOverlay() {
    return LoadingOverlay(loadingOverlayViewModel: _loadingOverlayViewModel);
  }

  Widget _buildImageListItem(BuildContext context, int index) {
    if (index == _reportEditOnlyScreenViewModel.listPhotosDtos.length - 3) {
      _appendExistingListPhotosDtos();
    }

    final dto = _reportEditOnlyScreenViewModel.listPhotosDtos[index];

    return MaxScreenWidthPictureItem(dto: dto);
  }

  Widget _buildImageListView() {
    return SizedBox.expand(
      child: ListView.builder(
        cacheExtent: 1000,
        itemCount: _reportEditOnlyScreenViewModel.listPhotosDtos.length,
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
