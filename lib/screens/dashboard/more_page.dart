import 'package:fa_school/screens/more/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("More"),),
      body: ListView(
        children: [
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.person,
            ),
            title: Text("Profile"),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage() ));
            },
          ),

          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.newspaper,
            ),
            title: Text("News"),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
            ),
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage() ));
            },
          ),

          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.gear,
            ),
            title: Text("Settings"),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
            ),
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage() ));
            },
          ),
        ],
      ),
    );
  }
}
