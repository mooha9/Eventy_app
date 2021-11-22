
// ignore_for_file: deprecated_member_use

// import 'package:eventy_app/models/user/user_model.dart';
// import 'package:eventy_app/models/event.dart';
// import 'package:eventy_app/models/user/user_model.dart';
// import 'package:eventy_app/services/auth.dart';
// import 'package:eventy_app/views/pages/drawer/manage_card/manage_card.dart';
import 'dart:io';

import 'package:eventy_app/controllers/card/create_card_controller.dart';
// import 'package:eventy_app/data/LocalStorage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/src/extension_instance.dart';

import 'package:eventy_app/models/card/card_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:image_picker/image_picker.dart';


// ignore: must_be_immutable
class CreateCard extends StatelessWidget {
  String id ;
  CreateCard(this.id);
  final _controller = Get.put(CreateCardContoller());
  File? image ;
Future pickImage() async {
  final image = await  ImagePicker().pickImage(source: ImageSource.gallery);
  if(image == null) return;
  final imageTamporary = File(image.path);
  this.image = imageTamporary;
}
  @override
  Widget build(BuildContext context) {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DBCard card = DBCard('','','','','','','','','','', );
  // LocalStorage storage = LocalStorage();
    // ignore: unused_local_variable

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Text(
                'Create Card',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.teal[100],
        toolbarHeight: 70,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        leading: BackButton(
          color: Colors.black54,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
              color: Colors.teal[50],
              child:  Form(
              key: _formKey,
              child:
              //  (SingleChildScrollView(
              //   child: 
                GetBuilder<CreateCardContoller>(
                    init: CreateCardContoller(),
                    builder: (controller) =>
                 ListView(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      SizedBox(height: 10.0),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Visibility(
                          visible: false,
                          child: TextFormField(
                            controller: TextEditingController(text:card.category),
                            
                            )),
                            
                            SelectCategory(),
                            
                            Obx(()=>_controller.selectedImagePath.value == ""?
                              Text("select the logo "):
                              Image.file(File(_controller.selectedImagePath.value))
                            
                              ),
                              SizedBox(
                              height: 3,
                            ),
                               Obx(()=>Text(_controller.selectedImageSize.value == ""?"":
                                    _controller.selectedImageSize.value, style: TextStyle(fontWeight: FontWeight.bold),)
                            
                              ),
                               RaisedButton(onPressed: (){
                            
                                _controller.getImage(ImageSource.gallery);
                              },
                            
                                child: Text("select logo", style: TextStyle(color: Colors.white),),
                              ),
                            
                            SizedBox(
                              height: 3,
                            ),
                            Divider(),
                            
                            TextFormField(
                              controller: TextEditingController(text:card.name),
                              onChanged: (value){
                                card.name= value;
                              },
                              onSaved: (value) {
                                    CreateCardContoller.to .name = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.name.isNotEmpty)
                                      print(_controller.name);

                                    if (_controller.name.isEmpty)
                                      print("NO FIRSTNAME");
                                  },
                                  
                              minLines:
                                  1, // any number you need (It works as the rows for the textarea)
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: new InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: 'Name',
                                helperText: 'Write name of your card.',
                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  color: Colors.teal,
                                ),
                                prefixText: ' ',
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(),
                            SizedBox(
                              height: 3,
                            ),
                            TextFormField(
                              controller: TextEditingController(text:card.workType),
                             
                              onSaved: (value) {
                                    CreateCardContoller.to.workType = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.workType.isNotEmpty)
                                      print(_controller.workType);

                                    if (_controller.workType.isEmpty)
                                      print("NO workType");
                                  },
                              onChanged: (val){
                                card.workType= val;
                              },
                              minLines:
                                  1, // any number you need (It works as the rows for the textarea)
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: new InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: ' Work Type',
                                helperText: 'Which filed you work with e.g.Food Truck',
                                prefixIcon: const Icon(
                                  Icons.category_rounded,
                                  color: Colors.teal,
                                ),
                                prefixText: ' ',
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(),
                            SizedBox(
                              height: 3,
                            ),
                            // TextFormField(
                              
                            //   minLines:
                            //       1, // any number you need (It works as the rows for the textarea)
                            //   keyboardType: TextInputType.multiline,
                            //   maxLines: null,
                            //   textAlignVertical: TextAlignVertical.top,
                            //   decoration: new InputDecoration(
                            //     enabledBorder: const OutlineInputBorder(
                            //       borderSide: const BorderSide(
                            //           color: Colors.grey, width: 0.0),
                            //     ),
                            //     border: OutlineInputBorder(
                            //         borderSide:
                            //             new BorderSide(color: Colors.teal)),
                            //     hintText: 'Logo',
                            //     helperText: 'Insert png logo.',
                            //     prefixIcon: const Icon(
                            //       Icons.stream_rounded,
                            //       color: Colors.teal,
                            //     ),
                            //     prefixText: ' ',
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 3,
                            // ),
                            // Divider(),
                            // SizedBox(
                            //   height: 3,
                            // ),
                            TextFormField(
                              controller: TextEditingController(text:card.city),
                              onChanged: (val){
                                card.city= val;
                              },
                               onSaved: (value) {
                                    CreateCardContoller.to.city = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.city.isNotEmpty)
                                      print(_controller.city);

                                    if (_controller.city.isEmpty)
                                      print("NO city");
                                  },
                              
                              minLines:
                                  1, // any number you need (It works as the rows for the textarea)
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: new InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: 'City',
                                helperText: 'Insert city name.',
                                prefixIcon: const Icon(
                                  Icons.location_pin,
                                  color: Colors.teal,
                                ),
                                prefixText: ' ',
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(),
                            SizedBox(
                              height: 3,
                            ),
                            TextFormField(
                              controller: TextEditingController(text:card.url_work),
                              onChanged: (val){
                                card.url_work= val;
                              },
                               
                               onSaved: (value) {
                                    CreateCardContoller.to.url_work = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.url_work.isNotEmpty)
                                      print(_controller.url_work);

                                    if (_controller.url_work.isEmpty)
                                      print("NO url_work");
                                  },
                              minLines:
                                  1, // any number you need (It works as the rows for the textarea)
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: new InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: 'URL',
                                helperText: 'Link for your work.',
                                prefixIcon: const Icon(
                                  Icons.link,
                                  color: Colors.teal,
                                ),
                                prefixText: ' ',
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(),
                            SizedBox(
                              height: 3,
                            ),
                            TextFormField(
                              controller: TextEditingController(text:card.tagLine),
                              onChanged: (val){
                                card.tagLine= val;
                              },
                               onSaved: (value) {
                                    CreateCardContoller.to.tagLine = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.tagLine.isNotEmpty)
                                      print(_controller.tagLine);

                                    if (_controller.tagLine.isEmpty)
                                      print("NO tagLine");
                                  },
                              minLines:
                                  1, // any number you need (It works as the rows for the textarea)
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: new InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: 'Tagline',
                                helperText:
                                    'Write a short note e.g. Ready To Setup Light For Events.',
                                prefixIcon: const Icon(
                                  Icons.sell_outlined,
                                  color: Colors.teal,
                                ),
                                prefixText: ' ',
                              ),
                            ), SizedBox(
                              height: 3,
                            ),
                            Divider(),
                            SizedBox(
                              height: 3,
                            ),
                            TextFormField(
                              controller: TextEditingController(text:card.email),
                              onChanged: (val){
                                card.email= val;
                              },
                              onSaved: (value) {
                                    CreateCardContoller.to.email = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.email.isNotEmpty)
                                      print(_controller.email);

                                    if (_controller.email.isEmpty)
                                      print("NO email");
                                  },
                              minLines:
                                  1, // any number you need (It works as the rows for the textarea)
                              keyboardType: TextInputType.number,
                              maxLines: null,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: new InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: 'Email',
                                helperText: 'Insert email.',
                                prefixIcon: const Icon(
                                  Icons.alternate_email,
                                  color: Colors.teal,
                                ),
                                prefixText: ' ',
                              ),
                            
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Divider(),
                            SizedBox(
                              height: 3,
                            ),
                            TextFormField(
                              controller: TextEditingController(text:card.phoneNumber),
                              onChanged: (val){
                                card.phoneNumber= val;
                              },
                              onSaved: (value) {
                                    CreateCardContoller.to.phoneNumber = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.phoneNumber.isNotEmpty)
                                      print(_controller.phoneNumber);

                                    if (_controller.phoneNumber.isEmpty)
                                      print("NO phoneNumber");
                                  },
                              minLines:
                                  1, // any number you need (It works as the rows for the textarea)
                              keyboardType: TextInputType.number,
                              maxLines: null,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: new InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 0.0),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.teal)),
                                hintText: 'Contact',
                                helperText: 'Insert phone number.',
                                prefixIcon: const Icon(
                                  Icons.phone,
                                  color: Colors.teal,
                                ),
                                prefixText: ' ',
                              ),
                            
                            ),
                            SizedBox(
                              height: 50,
                            ),
                    
              
          Positioned(
            bottom: 90,
            left: 110,
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
                  )),
              child: TextButton(
                  onPressed:()
                  async {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();

                                        Get.put<CreateCardContoller>(
                                            CreateCardContoller());

                                        await _controller.createNewCard2();
                                      }
                                    },  
                  child: Text(
                    "Save",
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
                    ),
                  )),
            ),
          ),
          SizedBox(
                              height: 50,
                            ),
        ],
      ),
                    ],
                 )
                )
              )
              )
          //     )
          // ),
        ]
      )

    );
  }
}









class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);
 
  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _SelectCategoryState extends State<SelectCategory> {
  String dropdownValue = 'Service Provider';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (dropdownValue == 'Service Provider')
          Container(
            height: 240.0,
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
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
               
              ],
            ),
          ),

          
        if (dropdownValue == 'Activity Owner')
          Container(
            height: 240.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue[300],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                
              ],
            ),
          ),
        if (dropdownValue == 'Official Sponser')
          Container(
            height: 240.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(200, 212, 175, 55),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                
              ],
            ),
          ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Category:",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            DropdownButton<String>(
              
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black87),
              underline: Container(
                height: 2,
                color: Colors.teal,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;

                });
              },
              items: <String>[
                'Service Provider',
                'Activity Owner',
                'Official Sponser'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ],
    );
  }
}
  
  
    

