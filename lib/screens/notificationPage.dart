import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'Notification',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(width: 5.0),
            Icon(
              Icons.notifications,
              color: Color.fromARGB(240,74, 189, 159),
              size: 33,
            ),
          ],
        ),
      ),
    );
  }
}
