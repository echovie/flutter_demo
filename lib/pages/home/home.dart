import 'package:flutter/material.dart';
import '../../utils/global.dart';
import '../../api/ad_api.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerList = [];
  List courseList = [];

  void fetchData() async {
    adApi().then((res) {
      setState(() {
        bannerList = res.data['data']['bannerList'];
        courseList = res.data['data']['courseList'];
      });
    });
  }

  @override
  void initState() {
    fetchData();

    super.initState();
  }

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
