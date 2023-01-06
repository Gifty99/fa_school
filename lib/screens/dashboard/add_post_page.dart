import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("New post"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          TextFormField(
            maxLines: 7,
            minLines: 5,
            decoration: InputDecoration(
              fillColor: Colors.grey.withOpacity(0.2),
              filled: true,
              hintText: "Add a new post",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Add Picture"),
          SizedBox(
            height: 8,
          ),
          Container(alignment: Alignment.center,
            height: 250, width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Text("Tap to add image",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
            ),),
          ),
      SizedBox(height: 24),
       ElevatedButton(onPressed:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> AddPost() ));
        print("Add post clicked");
      }, child: Text("Add post"),
       )],
      ),
    );
  }
}
