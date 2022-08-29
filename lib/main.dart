import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:grab_app/extensions/routing.extension.dart';
import 'package:grab_app/extensions/theme.extension.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Grab App',
      theme: ThemeApp.themeApp,
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
