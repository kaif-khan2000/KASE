import 'package:chat_app/screens/Authenticate/register.dart';
import 'package:chat_app/screens/Authenticate/signin.dart';
import 'package:chat_app/sharable/custom_button.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: <Widget>[
            CustomButton(text: 'login',onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context) => SignIn(),
              ));
            },),
            SizedBox(height: 10,),
            CustomButton(text: 'Register',onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context) => Register(),
              ));
            },),
          ],
        ),
      ),
    );
  }
}

