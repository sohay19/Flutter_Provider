import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/main_Provider.dart';
import 'view/cupertino/main_cupertino_view.dart';
import 'view/material/main_material_view.dart';


void main() {
  runApp( ChangeNotifierProvider(
    create: (_) => MainProvider(),
    child: const MyApp(),
  ));
}

/// Root App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String title = 'Provider';

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS || Platform.isMacOS) {
      return CupertinoView(title);
    } else {
      return MaterialView(title);
    }
  }
}

/// Material
class MaterialView extends StatelessWidget {
  String title;

  MaterialView(this.title);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
      ),
      home: MaterialMainPage(
        title: title,
      ),
    );
  }
}

/// Cupertino
class CupertinoView extends StatelessWidget {
  String title;

  CupertinoView(this.title);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.systemIndigo,
      ),
      home: CupertinoMainPage(
        title: title,
      ),
    );
  }
}

