// ignore_for_file: unused_import

import 'package:final_project/components/Header.dart';
import 'package:final_project/components/tab_view_base.dart';
import 'package:flutter/material.dart';
import 'package:geocoder2/geocoder2.dart';

class Diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              flexibleSpace: Header(
                '',
                rightSide: Container(
                  height: 35.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  margin: EdgeInsets.only(right: 20.0),
                  child: Center(
                    child: Text(
                      'برنامه های غذایی',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 23.0,
                      ),
                    ),
                  ),
                ),
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'پیش غذا',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'شب',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'چاشت',
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: Tab(
                      text: 'صبحانه',
                    ),
                  ),
                ],
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey[400],
                indicatorWeight: 4.0,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color.fromRGBO(215, 225, 255, 1.0),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                TabViewBase(
                  tabName: 'پیش غذا',
                ),
                TabViewBase(
                  tabName: 'شب',
                ),
                TabViewBase(
                  tabName: 'چاشت',
                ),
                TabViewBase(
                  tabName: 'صبحانه',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
