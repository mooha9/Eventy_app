import 'package:flutter/material.dart';
import '../screens/eventDetails.dart';

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
        child:Stack(
        children: [
           ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "${event["img"]}",
                      height: 260,
                      width: 280,
                      fit: BoxFit.cover,            
                    ),
                  ),
         Positioned(
          bottom: 0,
           child: Container(
                      height: 110.0,
                      width: 280.0,
                      child: Row(children: [
                          Expanded(
                           child: Align(
                             alignment: Alignment.topRight,
                             child: Padding(
                               padding: const EdgeInsets.all(15.0),
                               child: Text(
                                event['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows:  <Shadow>[
                                     Shadow(
                                      offset: Offset(1.0, 1.0),
                                       blurRadius: 4.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                     ),
                                  ]
                                  ),
                                 ),
                             ),
                           ),
                         ),
                         Container(
                           height: 50,
                           width: 150,
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
                                   Color.fromARGB(230,30, 155, 189),
                                  Color.fromARGB(230,74, 155, 188),
                                       ],
                )
                ),
                child: Column(children: [
                          Expanded(
                           child: 
                                Center(
                                  child: Text(
                                  event['name'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows:  <Shadow>[
                                       Shadow(
                                        offset: Offset(1.0, 1.0),
                                         blurRadius: 4.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                       ),
                                    ]
                                    ),
                                   ),
                                ),
                             ),
                        ]
                         ),
                         ),
                        ],),
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
         )
        ],
      ),             
      )   
    );
  }
}
