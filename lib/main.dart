import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/app/app_logic.dart';
import 'package:unsplash_clone/app/unsplash_clone_app.dart';

void main() {
  final appLogic = AppLogic();

  runApp(
    Provider(
      create: (context) => appLogic,
      child: const UnsplashCloneApp(),
    ),
  );
}
