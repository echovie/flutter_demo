import 'package:flutter/material.dart';
import 'home/home.dart';
import 'study/study.dart';
import 'profile/profile.dart';
import '../providers/current_index.dart';
import 'package:provider/provider.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> navigationBarList = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      label: '学习',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: '我',
    ),
  ];

  final List pages = [
    {
      "appBar": AppBar(
        title: const Text('拉勾教育'),
        elevation: 0,
        centerTitle: true,
      ),
      "body": HomePage(),
    },
    {
      "appBar": AppBar(
        title: const Text('学习中心'),
        elevation: 0,
        centerTitle: true,
      ),
      "body": StudyPage(),
    },
    {
      "appBar": AppBar(
        title: const Text('个人中心'),
        elevation: 0,
        centerTitle: true,
      ),
      "body": ProfilePage(),
    }
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    int currentPageIndex = context.watch<CurrentIndexProvider>().currentIndex;

    return Theme(
        data: ThemeData(
          appBarTheme: AppBarTheme.of(context).copyWith(
            color: Colors.transparent,
            titleTextStyle: const TextStyle(color: Colors.black),
          ),
        ),
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPageIndex,
            items: navigationBarList,
            onTap: (index) => context.read<CurrentIndexProvider>().changeIndex(index),
            selectedItemColor: Colors.green,
          ),
          appBar: pages[currentPageIndex]['appBar'],
          body: pages[currentPageIndex]['body'],
        ));
  }
}
