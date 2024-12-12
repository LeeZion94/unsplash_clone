import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/app/app_logic.dart';
import 'package:unsplash_clone/router/app_router.dart';

class UnsplashCloneApp extends StatefulWidget {
  const UnsplashCloneApp({super.key});

  @override
  State<UnsplashCloneApp> createState() => _UnsplashCloneAppState();
}

class _UnsplashCloneAppState extends State<UnsplashCloneApp> {
  late final AppLogic _appLogic;

  @override
  void initState() {
    super.initState();

    _initProperties();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _initProperties() {
    _appLogic = context.read<AppLogic>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
      routeInformationProvider: appRouter.routeInformationProvider,
      locale: _appLogic.locale,
    );
  }
}
