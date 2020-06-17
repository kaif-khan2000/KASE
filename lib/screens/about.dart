import 'package:flutter/material.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'This app is Developed by \nP KAIF ALI KHAN.\n \nFor his Friends.\n\n'+
              'By the way KASE means \"Kaif\'s App for Statement Exchange \"',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}