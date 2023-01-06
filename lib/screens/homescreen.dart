import 'package:fa_school/screens/dashboard/add_post_page.dart';
import 'package:fa_school/screens/dashboard/chat_page.dart';
import 'package:fa_school/screens/dashboard/home_page.dart';
import 'package:fa_school/screens/dashboard/more_page.dart';
import 'package:fa_school/screens/dashboard/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentScreen= 0;
  final screens = [
    HomePage(),
    SearchPage(),
    AddPost(),
    ChatScreen(),
    MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: currentScreen == 2 ? Colors.red : Colors.grey,
        elevation: 0,
          onPressed: () {
          setState(() {
            currentScreen = 2;
          });
          },
        child: const FaIcon(
          FontAwesomeIcons.plus,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 12,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.house,
                      color:currentScreen == 0 ? Colors.redAccent : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      color:currentScreen == 1 ? Colors.redAccent : Colors.grey,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.message,
                      color:currentScreen == 3 ? Colors.redAccent : Colors.grey,
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.compress,
                      color:currentScreen == 4 ? Colors.redAccent : Colors.grey,
                    ),
                    Text(
                      'More',
                      style: TextStyle(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messaging"),
      ),
      body: Column(
        children: [Expanded(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 20),
            children: [
              ChatPage(
                text: 'How was the concert?',
                isCurrentUser: false,
              ),
              ChatPage(
                text: 'Awesome! Next time you gotta come as well!',
                isCurrentUser: true,
              ),
              ChatPage(
                text: 'Ok, when is the next date? They\'re playing on the 20th of November',
                isCurrentUser: false,
              ),
              ChatPage(
                text: 'They\'re playing on the 20th of November',
                isCurrentUser: true,
              ),
              ChatPage(
                text: 'Let\'s do it!',
                isCurrentUser: false,
              ),

            ],
          ),
        ),
          TextFormField(
            decoration:
            InputDecoration(hintText: "Message",),
          ),

          SizedBox(height: 20,),
      ]),
    );
  }
}
