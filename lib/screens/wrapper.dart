import 'package:chat_app/models/user.dart';
import 'package:chat_app/screens/Authenticate/authenticate.dart';
import 'package:chat_app/screens/Chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of <User>(context);
    return user!=null ? Chat(user:user) : Authenticate();
    
  }
}