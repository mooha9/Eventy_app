import 'package:flutter/material.dart';

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
        body: (Container(
          color: Colors.teal[100],
        )));
  }
}
