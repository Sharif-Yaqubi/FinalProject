// ignore_for_file: unused_import

import 'package:final_project/pages/bmi_page.dart';
import 'package:final_project/tabs/Diet.dart';
import 'package:final_project/tabs/Programs.dart';
import 'package:geocoder2/geocoder2.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          children: <Widget>[
            Programs(),
            Diet(),
            BmiPage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.restaurant_menu, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.sports_gymnastics_sharp, size: 26.0),
            ),
          ],
          labelPadding: EdgeInsets.all(5.0),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black12,
          indicatorWeight: 0.01,
        ),
      ),
    );
  }
}
