// ignore_for_file: unnecessary_import, duplicate_ignore

// ignore: unused_import
import 'dart:io';

import 'package:eventy_app/controllers/card/create_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:eventy_app/util/over_viewdata_event.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class EventDetails extends GetView {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          color: Colors.blue[700],
                          size: 15.0,
                          ),
                             Text(
                                "${events[0]["location"]}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue[700],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 10.0),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                  Icons.timer,
                  color: Colors.grey[800],
                  size: 15.0,
                  
                  ),
                  SizedBox(width: 10,),
                  Text(
                     "${events[0]["time"]}",
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
                          Icons.calendar_view_day_outlined,
                          color: Colors.grey[700],
                          size: 15.0,
                          ),
                             Text(
                                "${events[0]["duration"]}",
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
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                  Icons.date_range,
                  color: Colors.grey[800],
                  size: 15.0,
                  
                  ),
                  SizedBox(width: 10,),
                  Text(
                     "${events[0]["date"]}",
                      style: TextStyle(
                        fontSize: 15,
                         color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                        ],
                      ),
                    ),
                       
                  ],
                ),
                Divider(),
                SizedBox(height: 5.0),
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
                SizedBox(height: 5.0),
                Text(
                  "Photos",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                buildPhotosList(),
                SizedBox(height: 10.0),
                Divider(),
                SizedBox(height: 5.0),
                comments(),
                SizedBox(height: 10.0),
                Divider(),
                 Text(
                  "Service Provider:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
                serviceProviderList(),
                SizedBox(height: 10.0),
                Divider(),
                 Text(
                  "Activity Owner:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
                activityOwnerList(),
                SizedBox(height: 10.0),
                Divider(),
                 Text(
                  "Official Sponsors:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
                 officialSponsorsList(),
                SizedBox(height: 80.0),
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
                                      Color.fromARGB(240,100, 196, 184),
                                      Color.fromARGB(250,74, 157, 196),
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
      width: 288,
      // width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "${events.toList()[0]["img"]}",
              height: 240.0,
               width: 388,
              // width: MediaQuery.of(context).size.width,
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
             InkWell(
               child: Container(
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
             ),
             InkWell(
               child: Container(
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
             ),
             InkWell(
               child: Container(
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
             ),
             InkWell(
               child: Container(
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
             ),
             InkWell(
               child: Container(
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
             ),
        ],
      ),
    );
  }
}

comments() {
  return Row(
    children: [
      Container(
                  constraints: BoxConstraints.tightFor(width: 300),
                  //width text field
                  margin: EdgeInsets.all(10),
                  child: Material(
                    // shadow
                    elevation: 5, //shadow
                    shadowColor: Colors.black, //color shadow
                    borderRadius: BorderRadius.circular(32.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        //size Text field
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        labelText: "write your comment...",
                        labelStyle: TextStyle(
                          fontSize: 15,
                        ),
                        
                        //for example name
                        hintStyle: TextStyle(fontSize: 15),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
               Ink(
          decoration: const ShapeDecoration(
            color: Colors.lightBlue,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(Icons.send),
            color: Colors.blue,
            onPressed: () {},
          ),
        ),
    ],
  
  );
}
serviceProviderList(){
  final _controller = Get.put(CreateCardContoller());


  return 
 Container(
    height: 250.0,
    
    child: ListView(
       scrollDirection: Axis.horizontal,
      children:[
        // SizedBox(width: 20,),
        
        Column(
              children: [
              Container(
                height: 240.0,
                width:388,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
               
                child: Stack(
                  children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 240,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5,),
                                      Text("Mohammed Alfayez"+_controller.cardName.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),                                  
                                      SizedBox(height: 10,),
                                      Text("Qassim - Buraydah"+_controller.city.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                      SizedBox(height: 5,),
                                      Text("Photographer for events"+_controller.tagLine.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                                      SizedBox(height:  75,),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 240,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("alfayez355@gmail.com"+_controller.email.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 5,),
                                      Text("https://twitter.com/M_7d_f"+_controller.urlWork.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 8,),
                                      Text("0546436737"+_controller.phoneNumber.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 5,),
                                      
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10,),
                                        Text("Serveic Provider"+_controller.category.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.grey[800]),),
                                        SizedBox(height: 5,),
                                        Text("Photographer"+_controller.workType.toString(),style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
                                        SizedBox(height: 5,),
                                        Image.asset("/Users/mohammedalfayez/Desktop/Eventy_main/Eventy_app/assets/images/cardLogo.png",width: 120,height: 120,)
                                        // Obx(()=>_controller.selectedImagePath.value == ""?
                                              
                                        //       Image.file(File("Eventy_app/assets/images/cardLogo.png")):
                                        //       Text("")
                                        //       ),
                                      ],
                                    ),
                                  ),
                                  ],
                              )
                  ],
                ))]),
                
      ]   ),
  );
           
      
}


officialSponsorsList(){
  final _controller = Get.put(CreateCardContoller());


  return 
 Container(
    height: 250.0,
    
    child: ListView(
       scrollDirection: Axis.horizontal,
      children:[
        // SizedBox(width: 20,),
        
        Column(
              children: [
              Container(
                height: 240.0,
                width:388,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:Color.fromARGB(200, 212, 175, 55),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
               
                child: Stack(
                  children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 240,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5,),
                                      Text("Mohammed Alfayez"+_controller.cardName.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),                                  
                                      SizedBox(height: 10,),
                                      Text("Qassim - Buraydah"+_controller.city.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                      SizedBox(height: 5,),
                                      Text("Photographer for events"+_controller.tagLine.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                                      SizedBox(height:  75,),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 240,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("alfayez355@gmail.com"+_controller.email.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 5,),
                                      Text("https://twitter.com/M_7d_f"+_controller.urlWork.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 8,),
                                      Text("0546436737"+_controller.phoneNumber.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 5,),
                                      
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10,),
                                        Text("Official Sponser"+_controller.category.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.grey[800]),),
                                        SizedBox(height: 5,),
                                        Text("Photographer"+_controller.workType.toString(),style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
                                        SizedBox(height: 5,),
                                        Image.asset("/Users/mohammedalfayez/Desktop/Eventy_main/Eventy_app/assets/images/cardLogo.png",width: 120,height: 120,)
                                        // Obx(()=>_controller.selectedImagePath.value == ""?
                                              
                                        //       Image.file(File("Eventy_app/assets/images/cardLogo.png")):
                                        //       Text("")
                                        //       ),
                                      ],
                                    ),
                                  ),
                                  ],
                              )
                  ],
                ))]),
                
      ]   ),
  );
           
      
}


activityOwnerList() {
  final _controller = Get.put(CreateCardContoller());


  return 
 Container(
    height: 250.0,
    
    child: ListView(
       scrollDirection: Axis.horizontal,
      children:[
        // SizedBox(width: 20,),
        
        Column(
              children: [
              Container(
                height: 240.0,
                width:388,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:Colors.blue[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
               
                child: Stack(
                  children: <Widget>[
                             Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 240,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5,),
                                      Text("Mohammed Alfayez"+_controller.cardName.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),                                  
                                      SizedBox(height: 10,),
                                      Text("Qassim - Buraydah"+_controller.city.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                                      SizedBox(height: 5,),
                                      Text("Photographer for events"+_controller.tagLine.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                                      SizedBox(height:  75,),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 240,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("alfayez355@gmail.com"+_controller.email.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 5,),
                                      Text("https://twitter.com/M_7d_f"+_controller.urlWork.toString(),style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 8,),
                                      Text("0546436737"+_controller.phoneNumber.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.blue[900]),),
                                      SizedBox(height: 5,),
                                      
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10,),
                                        Text("Activity Owner"+_controller.category.toString(),style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,color: Colors.grey[800]),),
                                        SizedBox(height: 5,),
                                        Text("Photographer"+_controller.workType.toString(),style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
                                        SizedBox(height: 5,),
                                        Image.asset("/Users/mohammedalfayez/Desktop/Eventy_main/Eventy_app/assets/images/cardLogo.png",width: 120,height: 120,)
                                        // Obx(()=>_controller.selectedImagePath.value == ""?
                                              
                                        //       Image.file(File("Eventy_app/assets/images/cardLogo.png")):
                                        //       Text("")
                                        //       ),
                                      ],
                                    ),
                                  ),
                                  ],
                              )
                                
                  ],
                ))]),
                
      ]   ),
  );
           
      
}

