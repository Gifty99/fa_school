import 'package:fa_school/screens/Register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(

      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Text("FA School",
                style: TextStyle(color: Colors.pink,fontSize: 40, fontWeight: FontWeight.w500)),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "Username", labelText: "Username"),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter at least 8 characters",
                  labelText: "Password"),
            ),
            SizedBox(height: 24),
            ElevatedButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen() ));
              print("Sign in clicked");
            },

                child: Text("Sign in")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Register() ));
              print("Sign up clicked");
            }, child: Text("Don't have an account? Create one."))
          ],
        ),
      ),
    ));
  }
}
