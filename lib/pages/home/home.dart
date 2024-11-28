import 'package:flutter/material.dart';
import '../../utils/global.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Text('Home Page'),
        onTap: () {
          G.router.navigateTo(context, '/');
        },
      ),
    );
  }
}
