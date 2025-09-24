import 'package:filazero/app/router/router.dart';
import 'package:filazero/app/theme/filazero_theme.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: FilaZeroTheme.theme,
      routerConfig: ConfigRouter().router,
    );
  }
}
