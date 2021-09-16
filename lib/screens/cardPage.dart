import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        elevation: 10,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cards  ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.credit_card_rounded,
              color: Color.fromARGB(240, 74, 189, 159),
              size: 35,
            ),
          ],
        ),
      ),
      body: Container(
        constraints: BoxConstraints.tightFor(width: 500),
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
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              labelText: "Search for the card",
              labelStyle: TextStyle(fontSize: 20),
              suffixIcon: Icon(Icons.credit_card_outlined),
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      ),
    );
  }
}
