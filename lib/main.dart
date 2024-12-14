import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/app/app_logic.dart';
import 'package:unsplash_clone/app/unsplash_clone_app.dart';
import 'package:unsplash_clone/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // native splash 생략
  final appLogic = AppLogic();

  await appLogic.bootStrap();

  runApp(
    Provider.value(
      value: appLogic,
      child: const UnsplashCloneApp(),
    ),
  );

  _goToInitialPage(appLogic.initialPagePath);
}

void _goToInitialPage(String initalPagePath) {
  appRouter.go(initalPagePath);
}
