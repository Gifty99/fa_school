import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Padding(
           padding: EdgeInsets.all(24),
           child: TextFormField(
             decoration:
             InputDecoration(hintText: "Search for posts here", labelText: "Search"),
           ),
         )
       ],
     ),
    );
  }
}
