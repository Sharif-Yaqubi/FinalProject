// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geocoder2/geocoder2.dart';

class UserTip extends StatelessWidget {
  final String image;
  final String name;

  UserTip({
    this.image,
    this.name,
  });
  
  // I refactor All My porject

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 15.0,
        top: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 105,
            height: 105,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(this.image),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(360.0),
              ),
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              this.name,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
