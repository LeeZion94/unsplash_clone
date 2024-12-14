import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/main_page_list_item/main_page_list_item.dart';
import 'package:unsplash_clone/main/main_page_view_model.dart';
import 'package:unsplash_clone/theme/app_colors.dart';
import 'package:unsplash_clone/theme/app_typhography.dart';
import 'package:unsplash_clone/util/mixin/toast_message_mixin.dart';
import 'package:unsplash_clone/util/widget/loading_overlay.dart';
import 'package:unsplash_clone/util/widget/loading_overlay_view_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with ToastMessageMixin {
  late final MainPageViewModel _mainPageViewModel;
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
    _mainPageViewModel = context.read<MainPageViewModel>();
    _mainPageViewModel.setIsLoadingOverlayVisibilityNotifier(
        _loadingOverlayViewModel.loadingOverlayVisibilityNotifier);
  }

  void _addListeners() {
    _mainPageViewModel.listPhotosDtosListenable.addListener(_refreshWidget);
    _mainPageViewModel.errorListenable.addListener(_handleError);
  }

  void _removeListeners() {
    _mainPageViewModel.listPhotosDtosListenable.removeListener(_refreshWidget);
    _mainPageViewModel.errorListenable.removeListener(_handleError);
  }

  void _addPostFrameCallBack() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _mainPageViewModel.fetchListPhotos();
      }
    });
  }

  void _handleError() {
    showToastMessage('Error Occurred', context);
  }

  void _refreshWidget() {
    setState(() {});
  }

  Widget _buildLoadingOverlay() {
    return LoadingOverlay(loadingOverlayViewModel: _loadingOverlayViewModel);
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text(
        'Unsplash',
        style: AppTypography.shared.heading_heading2(AppColors.bg_muted),
      ),
      backgroundColor: AppColors.bg_contrast,
      surfaceTintColor: AppColors.bg_contrast,
      centerTitle: true,
      toolbarHeight: 65,
    );
  }

  Widget _buildImageListView() {
    return SizedBox.expand(
      child: ListView.builder(
        cacheExtent: 1000,
        itemCount: _mainPageViewModel.listPhotosDtos.length,
        itemBuilder: (context, index) {
          return MainPageListItem(index: index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: AppColors.bg_contrast,
      body: SafeArea(
        child: Stack(
          children: [
            _buildImageListView(),
            _buildLoadingOverlay(),
          ],
        ),
      ),
    );
  }
}
