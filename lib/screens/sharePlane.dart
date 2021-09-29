import 'package:eventy_app/screens/manage_event.dart';
import 'package:flutter/material.dart';

class SharePlan extends StatefulWidget {
  @override
  _SharePlanState createState() => _SharePlanState();
}

class _SharePlanState extends State<SharePlan> {
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
            Padding(
               padding: const EdgeInsets.only(right:45.0),
              child: Text(
                'Share Plan',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                  
                ),
              ),
            ),
          ],
        ),
      ),
      body: 
      Center(
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               SizedBox(
                 height: 180,
               ),   
              Container(
                            height: 80,
                            width: 300,
                            decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 4,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                            shape: BoxShape.rectangle,
                            gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                              colors: [
                                    Color.fromARGB(240,100, 196, 184),
                                    Color.fromARGB(240,13, 230, 230),
                                     ],
                            )
                            ),
                            child: TextButton(  
                              onPressed: (){
                                Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return ManageEvent();
                                  },
                                ),
                              );
                              },
                              child: Text("Share Event To All", style: TextStyle(
                              fontSize: 20.0,
                               shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(3.0, 2.0),
                                  blurRadius: 4.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),)),
                            ),
                            SizedBox(
                 height: 60,
               ),
                            Container(
                            height: 80,
                            width: 300,
                            decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 4,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                            shape: BoxShape.rectangle,
                            gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                              colors: [
                                    Color.fromARGB(240,100, 196, 184),
                                    Color.fromARGB(240,13, 230, 230),
                                        ],
                            )
                            ),
                            child: TextButton(  
                              onPressed: (){

                              },
                              child: Text("Share Event To Find Particpate",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                              fontSize: 20.0,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(3.0, 2.0),
                                  blurRadius: 4.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),)),
                            ),
                            SizedBox(
                 height: 60,
               ),
                            Container(
                            height: 80,
                            width: 300,
                            decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 4,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                            shape: BoxShape.rectangle,
                            gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                              colors: [
                                    Color.fromARGB(240,100, 196, 184),
                                    Color.fromARGB(240,13, 230, 230),
                                        ],
                            )
                            ),
                            child: TextButton(  
                              onPressed: (){
                                
                              },
                              child: Text("Save As Draft",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                              fontSize: 20.0,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(3.0, 2.0),
                                  blurRadius: 4.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),)),
                            ),
            
            ],),
          ),
      ),
     
      
    );
  }
}