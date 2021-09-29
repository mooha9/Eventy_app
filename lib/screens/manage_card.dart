import 'package:eventy_app/screens/createCard.dart';
import 'package:flutter/material.dart';


class ManageCard extends StatefulWidget {
  @override
  _ManageCardState createState() => _ManageCardState();
}

class _ManageCardState extends State<ManageCard> {
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
              padding: const EdgeInsets.only(right: 45.0),
              child: Text(
                'Manage Card',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "You Don't Have Any Card",
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: FloatingActionButton(
          onPressed: () {
             Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return CreateCard();
              },
            ),
          );
          },
          child: const Icon(
            Icons.add,
            size: 35,
          ),
          backgroundColor: Colors.teal[200],
        ),
      ),
    );
  }
}
