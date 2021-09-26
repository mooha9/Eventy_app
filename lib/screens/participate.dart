import 'package:flutter/material.dart';

class Participate extends StatefulWidget {
  @override
  _ParticipateState createState() => _ParticipateState();
}

class _ParticipateState extends State<Participate> {
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
              'Participate  ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.pan_tool_rounded,
              color: Color.fromARGB(240, 74, 189, 159),
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
