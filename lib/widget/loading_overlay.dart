import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unsplash_clone/theme/app_colors.dart';
import 'package:unsplash_clone/widget/loading_overlay_view_model.dart';

class LoadingOverlay extends StatefulWidget {
  final LoadingOverlayViewModel _loadingOverlayViewModel;
  final bool _isCircularIndicator;

  const LoadingOverlay({
    super.key,
    bool isCircularIndicator = true,
    required LoadingOverlayViewModel loadingOverlayViewModel,
  })  : _isCircularIndicator = isCircularIndicator,
        _loadingOverlayViewModel = loadingOverlayViewModel;

  @override
  State<LoadingOverlay> createState() => _LoadingOverlayState();
}

class _LoadingOverlayState extends State<LoadingOverlay> {
  LoadingOverlayViewModel get _loadingOverlayViewModel =>
      widget._loadingOverlayViewModel;

  bool get _isCircularIndicator => widget._isCircularIndicator;

  @override
  void initState() {
    super.initState();
    _initProperties();
    _initListeners();
  }

  ValueListenable<bool> get _loadingOverlayVisibilityListenable =>
      _loadingOverlayViewModel.loadingOverlayVisibilityListenable;

  void _initListeners() {
    _loadingOverlayVisibilityListenable.addListener(_onLoadingOverlayChanged);
  }

  void _initProperties() {}

  @override
  void dispose() {
    _removeListeners();
    super.dispose();
  }

  void _refresh() {
    if (mounted) {
      setState(() {});
    }
  }

  void _onLoadingOverlayChanged() => _refresh();

  void _removeListeners() {
    _loadingOverlayVisibilityListenable
        .removeListener(_onLoadingOverlayChanged);
  }

  @override
  Widget build(BuildContext context) {
    if (_isCircularIndicator) {
      return _loadingOverlayWithCircularProgressIndicator;
    }
    return _loadingOverlay;
  }

  Widget get _loadingOverlay {
    return Visibility(
      visible: _loadingOverlayViewModel.isLoadingOverlayVisible == true,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.bg_contrast.withOpacity(0.5),
        child: const SizedBox.shrink(),
      ),
    );
  }

  Widget get _loadingOverlayWithCircularProgressIndicator {
    return Visibility(
      visible: _loadingOverlayViewModel.isLoadingOverlayVisible == true,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.bg_contrast.withOpacity(0.5),
        child: Center(
          child: SizedBox(
            height: 48.0,
            width: 48.0,
            child: CircularProgressIndicator(
              color: AppColors.bg_muted,
              backgroundColor: AppColors.bg_contrast,
              strokeWidth: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
