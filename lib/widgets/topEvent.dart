import 'package:flutter/material.dart';
import '../screens/eventDetails.dart';

class TopEvent extends StatelessWidget {
  final Map event;
  TopEvent({required this.event});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
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
            Container(
            height: 350,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 140,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.9),
                ],
                stops: [0.1, 1],
              ),),
              
              ),
      Positioned(
        bottom: 0,
        child: Column(
          children: [
          Text(
            event['name'],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
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
         
        Divider(
          height:10,
        ),
Container(
          height: 120.0,
          width: 280.0,
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
          child: Row(
            children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 140,
                        decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0)),
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                          colors: [
                                Color.fromARGB(150,78, 197, 241),
                              Color.fromARGB(150,13, 242, 201),
                                    ],
    )
    ),
    child: Row(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20, 
                  child: FittedBox(
                    child: Text(
                      event['location'],
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
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
                    ],
                  ),
            ]
                      ),
                      ),
                                ],
                              ),
                            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(            
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                      height:5,
                      color: Colors.amber,
                      thickness: 20,
                    ),
                  Text(
                  event['shortNote'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
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
                    Divider(
                      height:5,
                    ),
                    Text(
                  event['date'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
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
                    Divider(
                      height:5,
                    ),
                    Text(
                  event['category'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
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
                    Divider(
                      height:5,
                    ),
                ],
            ),
            ),
                        ],),
                        
                ),
          ],
        ),
      ), 
  ],
),             
)   
);
}
}
