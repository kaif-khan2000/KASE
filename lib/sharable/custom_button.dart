import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  CustomButton({this.text,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.blue,
        elevation: 6,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 60,
          child: Text(text),
        ),
      ),
    );
  }
}