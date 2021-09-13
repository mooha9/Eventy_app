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
              'Favorite',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.favorite_border_rounded,
              color: Color.fromARGB(240,74, 189, 159),
              size: 33,
            ),
          ],
        ),
      ),
      body: Container(
        
        child: ListView(
          
          padding: EdgeInsets.only(left: 20.0),
          children: <Widget>[
            
            Padding(
              padding: EdgeInsets.only(right: 20.0),
            ),

            buildProductList(),
            
          ],
        ),
      ),
    );
  }
}



buildProductList() {
  return Container(
    height: 740.0,
    
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
