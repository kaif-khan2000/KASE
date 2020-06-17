import 'package:chat_app/models/user.dart';
import 'package:chat_app/screens/wrapper.dart';
import 'package:chat_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData.dark(),
  ));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServices().user,
      child: Wrapper(),
    );
  }
}
