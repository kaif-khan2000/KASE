import 'package:chat_app/services/auth.dart';
import 'package:chat_app/sharable/custom_button.dart';
import 'package:chat_app/sharable/text_field.dart';
import 'package:flutter/material.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email ="";
  String password="";
  String error="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
      ),
      body: SizedBox.expand(
        child:Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children:<Widget>[
                //email
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText:"Email"),
                  validator: (val) => val.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(height: 20,),
                //password
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText:"Password"),
                  validator: (val) => val.length<6 ? 'Enter password with 6+ chars' : null,
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  obscureText: true,
                ),
                SizedBox(height: 10,),
                CustomButton(text: 'Login',onPressed: ()async{
                  if(_formKey.currentState.validate()){
                    dynamic result = await AuthServices().signInUsingEmailAndPassword(email, password);
                    if(result == null){
                      setState(() {
                        error = "Check Your credentials";
                      });
                    }else{
                      Navigator.pop(context);
                    }
                  }
                },),
                SizedBox(height: 10,),
                Text(error,style: TextStyle(color: Colors.red),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}