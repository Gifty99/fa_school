import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewPostComment extends StatelessWidget {
  const ViewPostComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View fresh\'s post"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        // height: 350,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/Passport Pic_face.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gifty Aboagye'),
                      Text('@Fresh '),
                    ],
                  ),
                  Spacer(),
                  FaIcon(
                    FontAwesomeIcons.compass,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/asian-1870022_1280.jpg",
                        fit: BoxFit.cover,
                      ))),
              SizedBox(height: 12),
              Row(children: [
                FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.red,
                ),
                Text("  32k"),
                SizedBox(
                  width: 30,
                ),
                FaIcon(
                  FontAwesomeIcons.comment,
                  color: Colors.red,
                ),
                Text("  10k"),
              ]),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fresh",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text:
                              '\“The purpose of our lives is to be happy.\” – Dalai Lama'),
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/laboratory-2815641_1280.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "pointbreak",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text:
                          'That\'s informative'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/people-2557396_1280.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "naa_odeley",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text:
                          'Stunning'),
                    ),
                  ),
                ],
              ),SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/graduation-2038866_1280.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "godkloy",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text:
                          'Great'),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Write a comment"),
              ),
              SizedBox(height: 8),
              ElevatedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewPostComment() ));
                print("Add comment clicked");
              }, child: Text("Add comment"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
