import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DailyCard extends StatelessWidget {
  const DailyCard({
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
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Spacer(),
                    Text('Daily Goal'),
                    Spacer(),
                    Text('How many task'),
                    Spacer(),
                    Text('Market'),
                    Spacer(),
                    Text('All Task'),
                    Spacer(),
                    CupertinoButton(
                      child: Text('Sebastian Button'),
                      onPressed: () {},
                    ),
                  ],
                ),
                Spacer(),
                CircularPercentIndicator(
                  center: SizedBox.expand(
                    child: CupertinoButton(
                      child: Text(
                        'Sebastiannakns',
                        overflow: TextOverflow.ellipsis,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  radius: 100,
                  lineWidth: 8.0,
                  animation: true,
                  animationDuration: 2000,
                  percent: 0.8,
                  progressColor: Color(0xff88fbcb),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
