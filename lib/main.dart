// ignore: depend_on_referenced_packages

// ignore_for_file: unused_import

import 'package:final_project/tabs/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geocoder2/geocoder2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Geometria', colorSchemeSeed: Colors.purple),
      home: HomePage(),
    );
  }
}
 // and also I add to my project a IconImage
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? SpinKitPulsingGrid(
              color: Colors.blue,
              size: 100.0,
            )
          : Tabs(),
    );
  }
}
