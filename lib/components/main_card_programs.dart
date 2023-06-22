// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geocoder2/geocoder2.dart';

class MainCardPrograms extends StatelessWidget {
  final Map<String, String> cardInfo = {
    'title': 'برای شما ',
    'time': 'در 10 ماه',
    'image': 'images/image008.jpg',
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                cardInfo['time'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              Text(
                cardInfo['title'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
      ),
      width: size.width - 40,
      height: (size.width - 40) / 2,
      margin: EdgeInsets.only(
        top: 40.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(cardInfo['image']),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 25.0,
            offset: Offset(8.0, 8.0),
          ),
        ],
      ),
    );
  }
}
