import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  final Function(int) onChange;
  const Height({Key key, @required this.onChange}) : super(key: key);

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  int _height = 150;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 12.0,
        shape: RoundedRectangleBorder(),
        child: Column(
          children: [
            Text(
              'قد',
              style: TextStyle(color: Colors.grey, fontSize: 25.0),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _height.toString(),
                  style: TextStyle(fontSize: 40.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'cm',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )
              ],
            ),
            Slider(
                min: 0,
                max: 240,
                value: _height.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _height = value.toInt();
                  });
                  widget.onChange(_height);
                })
          ],
        ),
      ),
    );
  }
}
