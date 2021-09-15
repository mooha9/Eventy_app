import 'package:flutter/material.dart';


import 'eventDetails.dart';


class TopEvent extends StatelessWidget {
  final Map event;

  TopEvent({required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),

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

        child: Container(
          height: 275,
          width: 285,
          child: Stack(
            children: <Widget>[
              SizedBox(height: 10),
               Row(
                 children:[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "${event["img"]}",
                      height: 260,
                      width: 280,
                      fit: BoxFit.cover,            
                    ),
                  ),
                 ]
               ),
               Center(
                 child: Container(
                    height: 120.0,
                    width: 400.0,
                    child: Row(children: [
                   Column(
                   mainAxisAlignment : MainAxisAlignment.center,
                    crossAxisAlignment : CrossAxisAlignment.center,
                     children: [
                       Text(
                        event['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          ),
                         ),
                        ],
                        ),
                      ],),
                     margin: const EdgeInsets.only(top: 150.0, ),
                    decoration: const BoxDecoration(
                       borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)),
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                            colors: [
                                 Color.fromARGB(230,74, 189, 159),
                                Color.fromARGB(230,74, 155, 198),
                                     ],
              )
              ),
              ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}
