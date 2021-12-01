import 'package:eventy_app/views/pages/home/slider_category.dart';
import 'package:eventy_app/views/pages/home/top_event.dart';
import 'package:eventy_app/util/over_viewdata_event.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'event_item.dart';
import 'notifications.dart';

class HomePage extends GetView {
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
              icon: const Icon(
                Icons.add_alert,
                color: Colors.black45,
              ),
              onPressed: () {
               Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return NotificationPage();
              },
            ),
          );
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children:[

        ListView(
          padding: EdgeInsets.only(left: 20.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
            ),
            categoryList(),
            titlenewEvent(),
            SizedBox(height: 5.0),
            topEventsList(),
            SizedBox(height: 5.0),
            titlenearEvent(),
            SizedBox(height: 1.0),
            nearEventsList(),
            SizedBox(height: 10.0),
            
          ],
        ),
        ] 
      ),
    );
  }
}

categoryList() {
  return Container(height: 60, width: 50, child: Categories());
}

titlenewEvent() {
  return Row(
    children: <Widget>[
      Text(
        "New Event",
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w800,
          color: Colors.black87,
        ),
      ),
    ],
  );
}

topEventsList() {
  return Container(
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

titlenearEvent() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Event near from you",
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
      height: 800.0,
      margin: new EdgeInsets.symmetric(vertical: 2.0),
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          Map event = events[index];
          return EventItem(
            event: event,
          );
        },
      ));
}


