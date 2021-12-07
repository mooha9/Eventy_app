import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SearchPage extends GetView {
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
              'Search  ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.search_rounded,
              color: Color.fromARGB(240, 74, 189, 159),
              size: 40,
            ),
          ],
        ),
      ),
      body: Container(
        constraints: BoxConstraints.tightFor(width: 500,height: 40),
        //width text field
        margin: EdgeInsets.all(20),
        child: Material(
          // shadow
          elevation: 5, //shadow
          shadowColor: Colors.black, //color shadow
          borderRadius: BorderRadius.circular(32.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              //size Text field
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              labelText: "Search for users",
              labelStyle: TextStyle(fontSize: 15),
              suffixIcon: Icon(Icons.search),
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      ),
    );
  }
}
