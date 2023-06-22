// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  final Function(int) onChange;
  final int initValue;
  final int min;
  final int max;
  final String title;

  const Age(
      {Key key,
      @required this.initValue,
      @required this.min,
      @required this.max,
      @required this.title,
      this.onChange})
      : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int _counter = 0;
  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 12.0,
        shape: RoundedRectangleBorder(),
        child: Column(children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                    child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.purple,
                        child: Icon(Icons.remove, color: Colors.white)),
                    onTap: () {
                      setState(() {
                        if (_counter > widget.min) {
                          _counter--;
                        }
                      });
                      widget.onChange(_counter);
                    }),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  _counter.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 15.0,
                ),
                InkWell(
                    child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                    onTap: () {
                      setState(() {
                        if (_counter < widget.max) {
                          _counter++;
                        }
                      });
                      widget.onChange(_counter);
                    }),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
