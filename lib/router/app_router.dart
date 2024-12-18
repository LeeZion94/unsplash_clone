import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/main_page.dart';
import 'package:unsplash_clone/main/main_page_view_model.dart';
import 'package:unsplash_clone/router/page_paths.dart';
import 'package:unsplash_clone/splash/spalsh_page.dart';

final appRouter = GoRouter(
  initialLocation: PagePaths.spalsh,
  redirect: _handleRedirect,
  routes: [
    _splashPageRoute,
    _mainPageRoute,
  ],
);

Future<String?> _handleRedirect(
    BuildContext context, GoRouterState state) async {
  return null;
}

GoRoute get _splashPageRoute {
  return GoRoute(
    path: PagePaths.spalsh,
    pageBuilder: (context, state) {
      return const MaterialPage(
        child: SpalshPage(),
      );
    },
  );
}

GoRoute get _mainPageRoute {
  return GoRoute(
    path: PagePaths.main,
    pageBuilder: (context, state) {
      return MaterialPage(
        child: Provider(
          create: (context) => MainPageViewModel(),
          child: const MainPage(),
        ),
      );
    },
  );
}
