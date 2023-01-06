import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Profile"),),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              decoration: BoxDecoration(color: Colors.pink),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/Passport Pic_face.png"),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Gifty Aboagye",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),),
                          Text("Computer Science",
                          style: TextStyle(color: Colors.white70),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: SizedBox(width: double.infinity,
                      child: RichText(text:TextSpan(text: "Interested in AI and data science. Have any interesting project idea? Let\'s colaboarate!", style: TextStyle(color: Colors.white),)
                        ,
                    ),
                  ),
                  ),],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(24),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("username"),
                Text("@fresh", style: TextStyle(fontWeight: FontWeight.w700),),
                Divider(color: Colors.black,),

                SizedBox(
                  height: 20,
                ),
                Text("Email"),
                Text("takyiwaa123@fa.edu.gh", style: TextStyle(fontWeight: FontWeight.w700),),
                Divider(color: Colors.black,),

                SizedBox(
                  height: 20,
                ),
                Text("Phone number"),
                Text("+233000000000", style: TextStyle(fontWeight: FontWeight.w700),),
                Divider(color: Colors.black,),

                SizedBox(
                  height: 20,
                ),
                Text("Address"),
                Text("Accra, Ghana", style: TextStyle(fontWeight: FontWeight.w700),),
                Divider(color: Colors.black,),

                SizedBox(
                  height: 20,
                ),
                Text("Lab"),
                Text("Curie Imaging lab", style: TextStyle(fontWeight: FontWeight.w700),),
                Divider(color: Colors.black,),
              ],
            ),)

          ],
        ),
      ),
    );
  }
}
