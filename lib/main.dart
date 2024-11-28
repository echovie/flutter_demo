import 'package:flutter/material.dart';
import 'pages/index.dart';
import 'package:fluro/fluro.dart';
import '../routes/routes.dart';
import './utils/global.dart';

void main() {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  G.router = router;

  runApp(const NavigationBarApp());
}

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: IndexPage(),
    );
  }
}