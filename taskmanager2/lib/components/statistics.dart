import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: GestureDetector(
        onTap: () => Get.snackbar('hi', 'Hi',
            snackPosition: SnackPosition.BOTTOM,
            margin: EdgeInsets.only(bottom: 20.0)),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          color: Color(0xff262a34),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Completed in the last 7 days',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            width: 4,
                            height: 40,
                            color: Color(0xffc25fff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            width: 4,
                            height: 120,
                            color: Color(0xffc25fff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            width: 4,
                            height: 100,
                            color: Color(0xffc25fff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            width: 4,
                            height: 80,
                            color: Color(0xffc25fff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            width: 4,
                            height: 60,
                            color: Color(0xffc25fff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            width: 4,
                            height: 60,
                            color: Color(0xffc25fff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            width: 4,
                            height: 60,
                            color: Color(0xffc25fff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text('Sebastian'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
