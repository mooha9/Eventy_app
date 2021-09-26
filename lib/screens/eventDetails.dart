import 'package:flutter/material.dart';
import 'package:eventy_app/util/overViewdata.dart';
import 'package:url_launcher/url_launcher.dart';

class EventDetails extends StatefulWidget {
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal[100],
              toolbarHeight: 50,
        elevation: 10,
         shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(10),
      ),
    ),
        leading: BackButton(
            color: Colors.black54,
            onPressed: () => Navigator.of(context).pop(),
        ),),
      body: Stack(   
        children: <Widget>[
          Container(
            color: Colors.teal[50],
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              children: <Widget>[
                SizedBox(height: 10.0),
                buildImage(),
                SizedBox(height: 10.0),
                Text(
                  "${events[0]["name"]}",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5.0),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                  Icons.sticky_note_2_outlined,
                  color: Colors.grey[800],
                  size: 15.0,
                  
                  ),
                  SizedBox(width: 10,),
                  Text(
                    
                      "${events[0]["shortNote"]}",
                      style: TextStyle(
                        fontSize: 15,
                         color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                        ],
                      ),
                    ),
                       Container(
                        child: Row(
                          children: [
                                  Icon(     
                          Icons.location_pin,
                          color: Colors.grey[700],
                          size: 15.0,
                          
                          ),
                             Text(
                                "${events[0]["location"]}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  "Description:",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Sed porttitor lectus nibh. Cras ultricies ligula "
                  "sed magna dictum porta. Praesent sapien massa, "
                  "convallis a pellentesque nec, egestas non nisi. "
                  "Lorem ipsum dolor sit amet, consectetur adipiscing "
                  "elit. Nulla porttitor accumsan tincidunt. "
                  "Curabitur arcu erat, accumsan id imperdiet et, "
                  "porttitor at sem.",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(),
                SizedBox(height: 10.0),
                Text(
                  "Photos",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                buildPhotosList(),
                SizedBox(height: 10.0),
                Divider(),
])
            ),
                        Positioned(
                          bottom: 40,
                          left: 115,
                          child: Container(
                            height: 60,
                            width: 200,
                            decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                            shape: BoxShape.rectangle,
                            gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                              colors: [
                                    Color.fromARGB(240,78, 197, 241),
                                  Color.fromARGB(240,13, 242, 201),
                                        ],
                            )
                            ),
                            child: TextButton(  
                              onPressed: (){},
                              child: Text("Register", style: TextStyle(
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
                        )
        ],
      ),
    );
  }
  
   buildImage() {
    return Container(
      height: 240.0,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: -10.0,
            bottom: 3.0,
            child: RawMaterialButton(
              onPressed: () {},
              fillColor: Colors.teal[100],
              shape: CircleBorder(),
              elevation: 10.0,
              child: Icon(
               Icons.favorite_border_rounded,
                 size: 25.0,
                color: Colors.teal,
                  ),
            ),
          ),
        ],
      ),
    );
   }

  buildPhotosList() {
    return Container(
      height: 300.0,
      width: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
           children: [
             Container(
               margin: EdgeInsets.all(10),
              child:ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
             ),
             Container(
               margin: EdgeInsets.all(10),
              child:ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
             ),
             Container(
               margin: EdgeInsets.all(10),
              child:ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
             ),
             Container(
               margin: EdgeInsets.all(10),
              child:ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
             ),
             Container(
               margin: EdgeInsets.all(10),
              child:ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
             ),
             Container(
               margin: EdgeInsets.all(10),
              child:ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
             ),
             Container(
               margin: EdgeInsets.all(10),
              child:ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
             ),
        ],
      ),
    );
  }
}
