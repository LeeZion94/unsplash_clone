import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:unsplash_clone/router/page_paths.dart';
import 'package:unsplash_clone/util/logger.dart';

class AppLogic {
  final _locale = const Locale('ko', 'KR');
  Locale get locale => _locale;

  String _initalPagePath = PagePaths.spalsh;
  String get initialPagePath => _initalPagePath;

  Future<void> bootStrap() async {
    try {
      await _setPreferredOrientations();

      _setInitialPagePath(PagePaths.main);
    } catch (error) {
      logError('$error');
    }
  }

  Future<void> _setPreferredOrientations() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  void _setInitialPagePath(String initialPagePath) {
    _initalPagePath = initialPagePath;
  }
}
