import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('未知页面'),
     )
    );
  }
}
