import 'package:eventy_app/util/data.dart';
import 'package:eventy_app/widgets/eventItem.dart';
import 'package:eventy_app/widgets/slider_category.dart';
import 'package:flutter/material.dart';

import 'addEventPage.dart';

class CategoryEvent extends StatelessWidget {
  const CategoryEvent({ Key? key }) : super(key: key);

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
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good Moorning",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add_alert, color: Colors.black45,),          
              onPressed: () {
              },
            ), 
          ],
        ),
      ),
      body:Container(
        child: ListView(
          padding: EdgeInsets.only(left: 20.0),
          children: <Widget>[
            
            Padding(
              padding: EdgeInsets.only(right: 20.0),
            ),
            categoryList(),
            SizedBox(height: 5.0),
            titlenearEvent(),
            SizedBox(height: 1.0),
            nearEventsList(),
            SizedBox(height: 10.0),  
          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(
        onPressed: () {
             Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => AddEvent()),
                );
        },
        child: const Icon(Icons.add_outlined,size: 35,),
        backgroundColor: Colors.teal[200],
      ),
    );
  }
  }

 categoryList() {
    return Container(
      height: 60,
      width: 50,
        child: Categories()
    );
  }

  titlenearEvent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Participate",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  nearEventsList() {
    return Container(
      height:800.0,
      margin: new EdgeInsets.symmetric(vertical: 2.0),
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          Map event = events[index];
          return EventItem(
            event: event,
          );
        },
      )
    );
  }
