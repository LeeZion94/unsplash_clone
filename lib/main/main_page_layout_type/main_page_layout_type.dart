enum MainPageLayoutType {
  basic,
  waterfall;

  String get iconImagePath {
    switch (this) {
      case MainPageLayoutType.basic:
        return 'assets/images/main_page/waterfall_layout_icon.png';
      case MainPageLayoutType.waterfall:
        return 'assets/images/main_page/basic_layout_icon.png';
    }
  }
}
