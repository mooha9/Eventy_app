import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        toolbarHeight: 90,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Edit Profile  ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.edit,
              color: Color.fromARGB(240, 74, 189, 159),
              size: 40,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(),
          Container(
            constraints: BoxConstraints.tightFor(width: 300),
            //width text field
            margin: EdgeInsets.all(10),
            child: Material(
              // shadow
              elevation: 5, //shadow
              shadowColor: Colors.black, //color shadow
              borderRadius: BorderRadius.circular(32.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  //size Text field
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  labelText: "name",
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: "your name",
                  //for example name
                  hintStyle: TextStyle(fontSize: 15),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints.tightFor(width: 300),
            //width text field
            margin: EdgeInsets.all(10),
            child: Material(
              // shadow
              elevation: 5, //shadow
              shadowColor: Colors.black, //color shadow
              borderRadius: BorderRadius.circular(32.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  //size Text field
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  labelText: "descreption",
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: "____________",
                  //for example name
                  hintStyle: TextStyle(fontSize: 15),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
