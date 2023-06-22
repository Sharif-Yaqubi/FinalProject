// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geocoder2/geocoder2.dart';

class NextStep extends StatelessWidget {
  final String image, title;
  final int seconds;

  NextStep({
    this.image,
    this.title,
    this.seconds,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 60.0,
          width: 60.0,
          margin: EdgeInsets.only(
            right: 20.0,
            bottom: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                this.image,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        Container(
          height: 65.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.title,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                ),
              ),
              Text(
                '${this.seconds} min',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.blueGrey[200],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
