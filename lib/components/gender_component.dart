import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class Gender extends StatefulWidget {

  final Function(int) onChange;
  const Gender({Key key,  @required this.onChange}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int _gender = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChoiceChip3D(
            border: Border.all(color: Colors.grey),
            style: ChoiceChip3DStyle(
              topColor: Colors.white,
              backColor: Colors.grey[300],
            ),
            onSelected: () {
              setState(() {
                _gender = 1;
              });
              widget.onChange(_gender);
            },
            onUnSelected: () {},
            selected: _gender == 1,
            child: Column(
              children: [
                Icon(
                  Icons.male_outlined,
                  size: 50.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text('آقا')
              ],
            ),
          ),
          SizedBox(
            width: 40.0,
          ),
          ChoiceChip3D(
            border: Border.all(color: Colors.grey),
            style: ChoiceChip3DStyle(
              topColor: Colors.white,
              backColor: Colors.grey[300],
            ),
            onSelected: () {
              setState(() {
                _gender = 2;
              });
              widget.onChange(_gender);
            },
            onUnSelected: () {},
            selected: _gender == 2,
            child: Column(
              children: [
                Icon(
                  Icons.female_outlined,
                  size: 50.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'خانم',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
