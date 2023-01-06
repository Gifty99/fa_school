import 'package:cached_network_image/cached_network_image.dart';
import 'package:fa_school/screens/dashboard/view_post_comment.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final images = [
    "assets/people-2557396_1280.jpg",
    "assets/graduation-2038866_1280.jpg",
    "assets/laboratory-2815641_1280.jpg",
    "assets/students-1807505_1280.jpg",
    "assets/university-105709_1280.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FA School"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(images[index]),
                          ));
                    }),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 350,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/Passport Pic_face.png"),
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
                        IconButton(icon:
                          FaIcon(FontAwesomeIcons.comment),
                          color: Colors.red,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewPostComment() ));
                            print("comment clicked");
                          },
                        ),
                        Text("  10k"),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Fresh",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(' \“The purpose of our lives is to be happy.\” – Dalai Lama'),
                             ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(hintText: "Write a comment"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
