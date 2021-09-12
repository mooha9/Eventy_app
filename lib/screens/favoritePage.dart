import 'package:eventy_app/screens/topEvent.dart';
import 'package:eventy_app/util/data.dart';
import 'package:flutter/material.dart';
import 'eventItem.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[50],
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(),
            child: Text(
              "Favorite",
              style: TextStyle(
                fontSize: 35.0,
                height: 1.3,
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 190.0),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          ),
          SizedBox(height: 1.0),
          buildTitleRow(),
          buildProductList(),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

buildTitleRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Event you like it ",
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w800,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 5.0),
      )
    ],
  );
}

buildProductList() {
  return Container(
    height: 450.0,
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: events.length,
      itemBuilder: (BuildContext context, int index) {
        Map event = events[index];

        return EventItem(
          event: event,
        );
      },
    ),
  );
}
