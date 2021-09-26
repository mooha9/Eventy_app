import 'package:flutter/material.dart';

class ManageEvent extends StatefulWidget {
  @override
  _ManageEventState createState() => _ManageEventState();
}

class _ManageEventState extends State<ManageEvent> {
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
            Padding(
               padding: const EdgeInsets.only(right:45.0),
              child: Text(
                'Manage My Event  ',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
