import 'package:chat_app/services/auth.dart';
import 'package:chat_app/sharable/custom_button.dart';
import 'package:chat_app/sharable/text_field.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email = "";
  String password = "";
  String error = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Register'),),

      body: SizedBox.expand(
        child:Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
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
                CustomButton(text: 'Register',onPressed: ()async{
                  if(_formKey.currentState.validate()){
                    try{
                      dynamic result = await AuthServices().registerWithEmailAndPassword(email, password);
                      if(result == null){
                        setState(() {
                          error = 'please supply valid email';
                        });
                      }else{
                        Navigator.pop(context);
                      }
                    }catch(e){
                      print(e.toString());
                      
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