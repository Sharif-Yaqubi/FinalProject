// ignore_for_file: prefer_const_literals_to_create_immutables, unused_import

import 'package:final_project/components/Header.dart';
import 'package:final_project/components/Section.dart';
import 'package:final_project/components/image_card_with_basic_footer.dart';
import 'package:final_project/components/image_card_with_internal.dart';
import 'package:final_project/components/main_card_programs.dart';
import 'package:final_project/components/user_photo.dart';
import 'package:final_project/components/user_tip.dart';
import 'package:final_project/models/exercise.dart';
import 'package:final_project/pages/activity_detail.dart';
import 'package:geocoder2/geocoder2.dart';
import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'images/image001.jpg',
      title: 'برنامه های ابتدایی',
      time: '30 min',
      difficult: 'ابتدایی',
    ),
    Exercise(
      image: 'images/image002.jpg',
      title: 'برنامه های متوسطه',
      time: '40 min',
      difficult: 'متوسطه',
    ),
    Exercise(
      image: 'images/image003.jpg',
      title: 'برنامه های پیشرفته',
      time: '50 min',
      difficult: 'پیشرفته',
    )
  ];

  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count',
            imageWidth: null,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetail(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  'برنامه های ورزشی ',
                  rightSide: UserPhoto(),
                ),
                MainCardPrograms(), // MainCard
                Section(
                  title: 'برنامه های روزانه',
                  horizontalList: this.generateList(context),
                ),
                Section(
                  title: 'نمونه ها',
                  horizontalList: <Widget>[
                    ImageCardWithInternal(
                      image: 'images/image004.jpg',
                      title: 'برنامه های ابتدایی',
                      duration: '30 min',
                    ),
                    ImageCardWithInternal(
                      image: 'images/image004.jpg',
                      title: 'برنامه های متوسطه',
                      duration: '40 min',
                    ),
                    ImageCardWithInternal(
                      image: 'images/image004.jpg',
                      title: 'برنامه های پیشرفته',
                      duration: '50 min',
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
                  decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          30.0,
                        ),
                        topRight: Radius.circular(
                          30.0,
                        ),
                      )),
                  child: Column(
                    children: <Widget>[
                      Section(
                        title: 'اشخاص مشهور',
                        horizontalList: <Widget>[
                          UserTip(
                            image: 'images/image010.jpg',
                            name: 'رونی-کلمن',
                          ),
                          UserTip(
                            image: 'images/image010.jpg',
                            name: 'رونی-کلمن',
                          ),
                          UserTip(
                            image: 'images/image010.jpg',
                            name: 'رونی-کلمن',
                          ),
                          UserTip(
                            image: 'images/image010.jpg',
                            name: 'رونی-کلمن',
                          ),
                          UserTip(
                            image: 'images/image010.jpg',
                            name: 'رونی-کلمن',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
