import 'package:flutter/material.dart';

class UnsplashCloneApp extends StatefulWidget {
  const UnsplashCloneApp({super.key});

  @override
  State<UnsplashCloneApp> createState() => _UnsplashCloneAppState();
}

class _UnsplashCloneAppState extends State<UnsplashCloneApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
