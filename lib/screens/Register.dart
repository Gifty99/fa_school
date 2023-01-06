import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
                Text("Personal details",
              style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500
              )
              ),
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
                decoration:
                InputDecoration(hintText: "Enter a valid email address", labelText: "Email"),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                decoration:
                InputDecoration(hintText: "Enter at least 8 characters", labelText: "Password"),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                decoration:
                InputDecoration(hintText: "Use the format dd/mm/yyyy", labelText: "Date of Birth"),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                decoration:
                InputDecoration(hintText: "Kindly add the country code. Eg. +233240000000", labelText: "Phone"),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                decoration:
                InputDecoration(hintText: "Street/City/Country Eg. Tema Ghana", labelText: "Address"),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(onPressed:(){
              print("sign up clicked");
        }, child: Text("Sign up")),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreens() ));
                print("Sign in clicked");
              }, child: Text("Already have an account? Sign in."))
            ],
          ),
        ),
      ),
    );
  }
}
