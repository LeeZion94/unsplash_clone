import 'package:flutter/foundation.dart';

class LoadingOverlayViewModel {
  final ValueNotifier<bool> _loadingOverlayVisibilityNotifier =
      ValueNotifier<bool>(false);

  ValueNotifier<bool> get loadingOverlayVisibilityNotifier =>
      _loadingOverlayVisibilityNotifier;

  ValueListenable<bool> get loadingOverlayVisibilityListenable =>
      _loadingOverlayVisibilityNotifier;

  bool get isLoadingOverlayVisible => _loadingOverlayVisibilityNotifier.value;

  void setLoadingOverlayVisibility(bool visible) {
    _loadingOverlayVisibilityNotifier.value = visible;
  }
}
