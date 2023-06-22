// ignore_for_file: missing_required_param, unused_import

import 'package:final_project/components/image_card_with_basic_footer.dart';
import 'package:final_project/data/Dishes.dart';
import 'package:final_project/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:geocoder2/geocoder2.dart';

class TabViewBase extends StatelessWidget {
  final String tabName;

  TabViewBase({this.tabName});

  List<Widget> _renderItem(Size size) {
    return List<Widget>.generate(dishes.length, (index) {
      var tag = dishes[index]['title'] + index.toString();
      Exercise exercise = Exercise(
        image: dishes[index]['image'],
        title: dishes[index]['title'],
        time: dishes[index]['time'],
        difficult: dishes[index]['calories'],
      );
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        child: ImageCardWithBasicFooter(
          exercise: exercise,
          tag: tag,
          imageWidth: size.width,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20.0),
        width: size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 30.0,
                      color: Color.fromRGBO(122, 158, 255, 1.0),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    'برنامه غذایی  ' + this.tabName,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(122, 158, 255, 1.0),
                    ),
                  ),
                ],
              ),
            ),
            Column(children: this._renderItem(size)),
          ],
        ),
      ),
    );
  }
}
