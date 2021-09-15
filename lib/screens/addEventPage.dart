import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      
      appBar: AppBar(
      backgroundColor: Colors.teal[100],
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
        elevation: 10,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add Event  ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.festival_rounded,
              color: Color.fromARGB(240,74, 189, 159),
              size: 35,
            ),
          ],
        ),
         leading: BackButton(
            color: Colors.black54,
            onPressed: () => Navigator.of(context).pop(),
        ),
      ),

      body:
            Container(
              alignment: Alignment.center,
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
                child:
                Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      FlatButton(
                        height: 70,
                        minWidth:310,
                       color: Color.fromARGB(230,74, 155, 198),
                        splashColor: Colors.black12,
                        onPressed: (){
                        },
                        child: Text(
                          "Public Event",
                          style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        height: 70,
                        minWidth:310,
                        color: Color.fromARGB(230,74, 155, 198),
                        splashColor: Colors.black12,
                        onPressed: (){
                        },
                        child: Text(
                          "Personal Event",
                          style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
            ),
    );
  }
}

