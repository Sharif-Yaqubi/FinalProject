// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geocoder2/geocoder2.dart';

class UserPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/image007.jpg',
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(360),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 20.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
    );
  }
}
