import 'package:eventy_app/views/pages/home/event_details.dart';
import 'package:flutter/material.dart';
import 'event_details.dart';

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
          height: 100.0,
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
    child: Center(
      child: Row(children: [
         SizedBox(width: 4,),
        Icon(
                  Icons.location_pin,
                  color: Colors.grey[700],
                  size: 20.0,
                  
                  ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
            children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: 20,
                     width: MediaQuery.of(context).size.width*.25,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      
                      alignment: Alignment.centerLeft,
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
                      ),
                                ],
                              ),
                            ),
                            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Column(            
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                      height:8,
                      color: Colors.amber,
                      thickness: 20,
                    ),
                  Icon(
                  Icons.event_note_outlined,
                  color: Colors.grey[800],
                  size: 15.0,
                  
                  ),
                    Divider(
                      height:10,
                    ),
                    Icon(
                  Icons.category_outlined,
                  color: Colors.grey[800],
                  size: 15.0,
                  
                  ),
                    Divider(
                      height:14,
                    ),
                      Icon(
                  Icons.date_range,
                  color: Colors.grey[800],
                  size: 15.0,
                  
                  ),
                    Divider(
                      height:10,
                    ),
                ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0,left: 8,right: 5),
              child: Column(            
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                      height:8,
                      color: Colors.amber,
                      thickness: 20,
                    ),
                  Container(
                    height: 15,
                    width: MediaQuery.of(context).size.width*.2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      alignment: Alignment.centerLeft,
                      child: Text(
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
                    ),
                  ),
                    Divider(
                      height:10,
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
                      height:13,
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
                      height:10,
                    ),
                ],
            ),
            ),
                        ],),
                        
                ),
          ],
        ),
      ),
      Positioned(
        right: -20,
        bottom: 80,
        child:RawMaterialButton(
                 
                onPressed: () {},
                fillColor: Colors.teal[100],
                shape: CircleBorder(),
                elevation: 3.0,
                child: Icon(
                 Icons.favorite_border_rounded,
                   size: 25.0,
                  color: Colors.teal,
                    ),
              ),), 
  ],
),             
)   
);
}
}
