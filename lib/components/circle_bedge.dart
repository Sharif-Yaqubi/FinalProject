// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geocoder2/geocoder2.dart';

class CircleBadge extends StatelessWidget {
  final Color color;
  final String title, subtitle;

  CircleBadge({this.color, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 45.0,
          height: 60.0,
          transform: Matrix4.translationValues(0.0, 102.0, 0.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: this.color,
          ),
          child: CustomPaint(
            size: const Size(50, 60),
            painter: TriangleClipper(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: this.color,
            border: Border.all(
              color: const Color.fromRGBO(231, 241, 248, 1.0),
              width: 3.0,
            ),
          ),
          padding: const EdgeInsets.all(6.0),
          transform: Matrix4.translationValues(0.0, -30.0, 0.0),
          height: 110.0,
          width: 120.0,
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: this.color,
              border: Border.all(
                color: (color != Color.fromRGBO(255, 255, 255, 1.0))
                    ? Colors.white
                    : Colors.blue,
                width: 3.0,
              ),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  this.title,
                  style: TextStyle(
                    color:
                        (this.color != const Color.fromRGBO(255, 255, 255, 1.0))
                            ? Colors.white
                            : Colors.blue[100],
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  this.subtitle,
                  style: TextStyle(
                    color:
                        (this.color != const Color.fromRGBO(255, 255, 255, 1.0))
                            ? Colors.white
                            : Colors.blue[100],
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TriangleClipper extends CustomPainter {
  Paint _paint;

  TriangleClipper() {
    _paint = Paint()
      ..color = const Color.fromRGBO(231, 241, 248, 1.0)
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width / 2, size.height - 15.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, this._paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
