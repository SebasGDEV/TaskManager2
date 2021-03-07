import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:taskmanager2/components/dailycard.dart';
import 'package:taskmanager2/components/statistics.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: Text('Dashboard'),
        backgroundColor: Color(0xff181725),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              'https://cdn.dribbble.com/users/4189231/avatars/normal/beac5382e2629adcd8f3bdfa68994fe5.jpg?1570110577',
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xff181725),
        child: Column(
          children: [
            Text('Hello,'),
            Text('Sebastián Garzón'),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Overview'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Productivity'),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 10, child: DailyCard()),
            Expanded(flex: 10, child: StatisticsCard()),
          ],
        ),
      ),
    );
  }
}
