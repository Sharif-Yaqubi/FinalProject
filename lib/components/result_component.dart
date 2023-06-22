import 'package:flutter/material.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:share_plus/share_plus.dart';

class Result extends StatelessWidget {
  final double bmiScore;
  final int age;
  String bmiStatus;
  String bmiInterpretation;
  Color bmiStatusColor;
  Result({Key key, @required this.bmiScore, @required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    setBmiInterpretation();
    return Scaffold(
      appBar: AppBar(
        title: Text('نتیجه وزن شما'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          elevation: 12.0,
          shape: RoundedRectangleBorder(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'نتیجه شما ',
                style: TextStyle(fontSize: 30.0, color: Colors.purple),
              ),
              SizedBox(
                height: 20.0,
              ),
              PrettyGauge(
                gaugeSize: 300.0,
                minValue: 0,
                maxValue: 40.0,
                segments: [
                  GaugeSegment('وزن ضعیف', 18.5, Colors.red),
                  GaugeSegment('وزن نورمال', 6.4, Colors.green),
                  GaugeSegment('اضافه وزن', 5, Colors.orange),
                  GaugeSegment('وزن کشنده', 10.1, Colors.pink),
                ],
                valueWidget: Text(
                  bmiScore.toStringAsFixed(1),
                  style: TextStyle(fontSize: 40.0),
                ),
                currentValue: bmiScore.toDouble(),
                needleColor: Colors.purple,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                bmiStatus,
                style: TextStyle(fontSize: 20.0, color: bmiStatusColor),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                bmiInterpretation,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('دوباره محاسبه کن'),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Share.share(
                          'نتیجه شما هست ${bmiScore.toStringAsFixed(1)} به سن ${age}');
                    },
                    child: Text('به اشتراک گذاشتن'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setBmiInterpretation() {
    if (bmiScore > 30) {
      bmiStatus = 'وزن کشنده';
      bmiInterpretation = 'لطفا برو به جم و وزن کم کن';
      bmiStatusColor = Colors.pink;
    } else if (bmiScore >= 25) {
      bmiStatus = 'اضافه وزن';
      bmiInterpretation = 'تمرین به طور معمولی انجام بده و وزن کم کن';
      bmiStatusColor = Colors.orange;
    } else if (bmiScore >= 18.5) {
      bmiStatus = 'نورمال';
      bmiInterpretation = 'لذت ببر از زندگی و شما عالی هستید';
      bmiStatusColor = Colors.green;
    } else if (bmiScore < 18.5) {
      bmiStatus = 'وزن ضعیف';
      bmiInterpretation = 'کوشش کن که وزن اضاف کنی ';
      bmiStatusColor = Colors.red;
    }
  }
}
