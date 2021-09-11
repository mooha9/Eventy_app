import 'package:eventy_app/screens/topEvent.dart';
import 'package:eventy_app/util/data.dart';
import 'package:flutter/material.dart';
import 'eventItem.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[50],
        elevation: 0,
        
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 70.0),
            child: Text(
              "Good Moorning",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                height: 1.5,
                color: Colors.black,
              ),
            ),
            
          ),
          
          Center(
            child: IconButton(
              icon: const Icon(Icons.add_alert, color: Colors.black,),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Nothing')));
              },
            ),
          ),
          SizedBox(width: 20.0),
        ],
      ),
    
      body:ListView(
      
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          ),

          SizedBox(height: 30.0),
          buildRoomList(),
          SizedBox(height: 1.0),
          buildTitleRow(),
          buildProductList(),
          SizedBox(height: 10.0),
          
        ],
       
      ),
    
    );
  }

  }
  buildRoomList() {
    return Container(
      padding: EdgeInsets.only(),
      height: 275,
      width: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          Map event = events[index];

          return TopEvent(
            event: event,
          );
        },
      ),
    );
  }

  buildTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        Text(
          "Event near from you",
          
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
      height:390.0,
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

