import 'package:flutter/material.dart';


import 'eventDetails.dart';


class TopEvent extends StatelessWidget {
  final Map event;

  TopEvent({required this.event});

  @override
  Widget build(BuildContext context) {
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
        
        child: Container(
          height: 275,
          width: 280,
          
          child: Stack(
           

            children: <Widget>[
              
              SizedBox(height: 10),
              
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                
                child: Image.asset(
                  "${event["img"]}",
                  height: 260,
                  width: 280,
                  fit: BoxFit.cover,
                  
                ),
              ),
              
              Text(
                
                event['name'],
                 textAlign: TextAlign.center,
                
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  
                                    
                ),
                
              ),
              
            ],
            
          ),
          

          
        ),
      ),
    );
  }
}
