import 'package:flutter/material.dart';

import '../screens/eventDetails.dart';
import 'eventDetails.dart';

class EventItem extends StatelessWidget {
  final Map event;

  EventItem({required this.event});

  get crossAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    var container = Container(
          height: 140,
          width: 140,
            margin: new EdgeInsets.symmetric(vertical: 10.0),
            


  

          child: ClipRRect(
            
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "${event["img"]}",
              height: 140,
              width: 140,
              fit: BoxFit.cover,
              
              
            ),
          ),
        );
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return EventDetails();
              },
            ),
          );
        },
        
        child: container,
      ),
      );
    // ignore: dead_code
   
  }
}
