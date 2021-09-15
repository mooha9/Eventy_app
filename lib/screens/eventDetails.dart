import 'package:flutter/material.dart';
import 'package:eventy_app/util/data.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'eventItem.dart';


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
                SizedBox(height: 20.0),
                Text(
                  "${events[0]["name"]}",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 10.0),
                RatingBar.builder(
                      initialRating: 3,
                       minRating: 1,
                       direction: Axis.horizontal,
                       allowHalfRating: true,
                       itemCount: 5,
                       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                     itemBuilder: (context, _) => Icon(
                        Icons.star,
                      color: Colors.amber,
                          ),
                       onRatingUpdate: (rating) {
                        print(rating);
                     },
                    ),
                    SizedBox(height: 10.0),
                Text(
                  "OnlyFor Men ",
                  style: TextStyle(
                    fontSize: 27.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  "Description",
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
                SizedBox(height: 20.0),
                Text(
                  "Photos",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                buildProductList(),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          
        ],
      ),
    );
  }

  buildProductList() {
    return Container(
      height: 300.0,
      width: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          Map event = events.toList()[index];

          return EventItem(
            event: event,
          );
        },
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
            child: Image.asset(
              "${events[0]["img"]}",
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
}
