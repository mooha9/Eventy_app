import 'dart:io';

import 'package:eventy_app/controllers/profile/profile_controller.dart';
import 'package:eventy_app/controllers/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEdit extends GetView<ProfileController> {
   final _controller = Get.put(SettingController());
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
              padding: const EdgeInsets.only(right:30.0),
              child: Text(
                'Edit Profile  ',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                ),
              ),
            ),
            
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
           Obx(()=>_controller.selectedImagePath.value == ""?
                                          Text(""):
                                          Image.file(File(_controller.selectedImagePath.value),width: 120,height: 120,)
                                          //  _controller.selectedImagePath.value ==_controller.logo
                                          ),
          CircleAvatar(
                              backgroundColor: Colors.teal,
                              backgroundImage: NetworkImage(
                              "${controller.user!.profileImage?.name}",
                              ),
                              radius: 60.0,
                              foregroundColor: Colors.red
                            ),
                  SizedBox(
            height: 20,
          ),
                 // ignore: deprecated_member_use
                 RaisedButton(
                    color: Colors.teal[700],
                  onPressed: (){
                  _controller.getImage(ImageSource.gallery);
                            },
                  child: Text("change image", style: TextStyle(color: Colors.white),),
                            ),
                  SizedBox(
            height: 40,
          ),
          Center(),
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
                 controller: TextEditingController()..text = "${controller.user!.firstName}",
                  onChanged: (text) => {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  //size Text field
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  labelText: "change name",
                  labelStyle: TextStyle(fontSize: 15),
                  
                  //for example name
                  hintStyle: TextStyle(fontSize: 15),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
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
                controller: TextEditingController()..text = "${controller.user!.bio}",
                  onChanged: (text) => {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  //size Text field
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  labelText: "change bio descreption",
                  labelStyle: TextStyle(fontSize: 15),
                  
                  //for example name
                  hintStyle: TextStyle(fontSize: 15),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
                            height: 60,
                            width: 200,
                            decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                            shape: BoxShape.rectangle,
                           color: Colors.teal
                            ),
                            child: TextButton( 
                              onPressed: (){},
                              child: Text("SAVE", style: TextStyle(
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
        ],
      ),
    );
  }
}
