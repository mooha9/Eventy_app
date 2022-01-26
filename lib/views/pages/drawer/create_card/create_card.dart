import 'dart:io';

import 'package:eventy_app/controllers/card/create_card_controller.dart';
import 'package:eventy_app/util/alerts.dart';
import 'package:eventy_app/util/app_state.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
// ignore: unnecessary_import
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class CreateCard extends StatelessWidget {
  final _controller = Get.put(CreateCardContoller());

  @override
  Widget build(BuildContext context) {
    final GlobalObjectKey<FormState> _formKey =
        GlobalObjectKey<FormState>("_UploadFormState");

    // ignore: unused_local_variable
    return Scaffold(
        backgroundColor: Colors.teal[50],
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
        body: Stack(children: <Widget>[
          Container(
              color: Colors.teal[50],
              child: Form(
                  key: _formKey,
                  child: GetBuilder<CreateCardContoller>(
                      init: CreateCardContoller(),
                      builder: (controller) => ListView(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            children: <Widget>[
                              SizedBox(height: 10.0),
                              SizedBox(height: 10.0),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(children: [
                                    Container(
                                        height: 240.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: _controller.selectedValue ==
                                                  'Official Sponser'
                                              ? Color.fromARGB(
                                                  200, 212, 175, 55)
                                              : _controller.selectedValue ==
                                                      'Activity Owner'
                                                  ? Colors.blue[300]
                                                  : _controller.selectedValue ==
                                                          'Security'
                                                      ? Colors.pinkAccent
                                                      : Colors.teal[300],
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 4,
                                              blurRadius: 5,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Stack(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Container(
                                                height: 240,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      " " +
                                                          _controller.cardName
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "  " +
                                                          _controller.city
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "   " +
                                                          _controller.tagLine
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      height: 75,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Container(
                                                height: 240,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "   " +
                                                          _controller.email
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Colors.blue[900]),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "   " +
                                                          _controller.urlWork
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Colors.blue[900]),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Text(
                                                      "   " +
                                                          _controller
                                                              .phoneNumber
                                                              .toString(),
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Colors.blue[900]),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        "   " +
                                                            _controller.category
                                                                .toString(),
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Colors
                                                                .grey[800]),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        "   " +
                                                            _controller.workType
                                                                .toString(),
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Obx(
                                                        () => _controller
                                                                    .selectedImagePath
                                                                    .value ==
                                                                ""
                                                            ? Text("")
                                                            : Image.file(
                                                                File(_controller
                                                                    .selectedImagePath
                                                                    .value),
                                                                width: 120,
                                                                height: 120,
                                                              ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 50,
                                        width: 200,
                                        // ignore: deprecated_member_use
                                        child: RaisedButton(
                                          color: Colors.teal[700],
                                          onPressed: () {
                                            _controller
                                                .getImage(ImageSource.gallery);
                                            _controller
                                                    .selectedImagePath.value ==
                                                _controller.logo;
                                          },
                                          child: Text(
                                            "select logo",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  TextFormField(
                                    controller: TextEditingController(
                                        text: _controller.cardName),
                                    onChanged: (value) {
                                      _controller.cardName = value;
                                    },
                                    validator: (value) {
                                      return value!.length < 7
                                          ? 'Name must be greater than 7 characters'
                                          : null;
                                    },
                                    onSaved: (value) {
                                      CreateCardContoller.to.cardName = value!;
                                    },
                                    onTap: () {
                                      _formKey.currentState!.save();
                                      if (_controller.cardName
                                          .toString()
                                          .isNotEmpty)
                                        print(_controller.cardName);

                                      if (_controller.cardName
                                          .toString()
                                          .isEmpty) print("NO FIRSTNAME");
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
                                          borderSide: new BorderSide(
                                              color: Colors.teal)),
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
                                  SizedBox(
                                    height: 3,
                                  ),
                                  TextFormField(
                                    controller: TextEditingController(
                                        text: _controller.city),
                                    onChanged: (val) {
                                      _controller.city = val;
                                    },
                                    validator: (value) {
                                      return value!.length < 5
                                          ? 'Name must be greater than 5 characters'
                                          : null;
                                    },
                                    onSaved: (value) {
                                      CreateCardContoller.to.city = value!;
                                    },
                                    onTap: () {
                                      _formKey.currentState!.save();
                                      if (_controller.city
                                          .toString()
                                          .isNotEmpty) print(_controller.city);

                                      if (_controller.city.toString().isEmpty)
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
                                          borderSide: new BorderSide(
                                              color: Colors.teal)),
                                      hintText: 'City',
                                      helperText: 'Insert city name.',
                                      prefixIcon: const Icon(
                                        Icons.location_pin,
                                        color: Colors.teal,
                                      ),
                                      prefixText: ' ',
                                    ),
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  TextFormField(
                                    controller: TextEditingController(
                                        text: _controller.workType),

                                    onSaved: (value) {
                                      CreateCardContoller.to.workType = value!;
                                    },
                                    validator: (value) {
                                      return value!.length < 7
                                          ? 'Work Type must be greater than 7 characters'
                                          : null;
                                    },
                                    onTap: () {
                                      _formKey.currentState!.save();
                                      if (_controller.workType
                                          .toString()
                                          .isNotEmpty)
                                        print(_controller.workType);

                                      if (_controller.workType
                                          .toString()
                                          .isEmpty) print("NO workType");
                                    },
                                    onChanged: (val) {
                                      _controller.workType = val;
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
                                          borderSide: new BorderSide(
                                              color: Colors.teal)),
                                      hintText: ' Work Type',
                                      helperText:
                                          'Which filed you work with e.g.Food Truck',
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
                                  TextFormField(
                                    controller: TextEditingController(
                                        text: _controller.tagLine),
                                    onChanged: (val) {
                                      _controller.tagLine = val;
                                    },
                                    validator: (value) {
                                      return value!.length < 10
                                          ? 'TagLine must be greater than 10 characters'
                                          : null;
                                    },
                                    onSaved: (value) {
                                      CreateCardContoller.to.tagLine = value!;
                                    },
                                    onTap: () {
                                      _formKey.currentState!.save();
                                      if (_controller.tagLine
                                          .toString()
                                          .isNotEmpty)
                                        print(_controller.tagLine);

                                      if (_controller.tagLine
                                          .toString()
                                          .isEmpty) print("NO tagLine");
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
                                          borderSide: new BorderSide(
                                              color: Colors.teal)),
                                      hintText: 'Tagline',
                                      helperText:
                                          'Write a short note e.g. Ready To Setup Light For Events.',
                                      prefixIcon: const Icon(
                                        Icons.sell_outlined,
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
                                    controller: TextEditingController(
                                        text: _controller.email),
                                    onChanged: (val) {
                                      _controller.email = val;
                                    },
                                    validator: (value) {
                                      return value!.length < 7
                                          ? 'Email must be greater than 7 characters'
                                          : null;
                                    },
                                    onSaved: (value) {
                                      CreateCardContoller.to.email = value!;
                                    },
                                    onTap: () {
                                      _formKey.currentState!.save();
                                      if (_controller.email
                                          .toString()
                                          .isNotEmpty) print(_controller.email);

                                      if (_controller.email.toString().isEmpty)
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
                                          borderSide: new BorderSide(
                                              color: Colors.teal)),
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
                                    controller: TextEditingController(
                                        text: _controller.urlWork),
                                    onChanged: (val) {
                                      _controller.urlWork = val;
                                    },

                                    onSaved: (value) {
                                      CreateCardContoller.to.urlWork = value!;
                                    },
                                    onTap: () {
                                      _formKey.currentState!.save();
                                      if (_controller.urlWork
                                          .toString()
                                          .isNotEmpty)
                                        print(_controller.urlWork);

                                      if (_controller.urlWork
                                          .toString()
                                          .isEmpty) print("NO urlWork");
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
                                          borderSide: new BorderSide(
                                              color: Colors.teal)),
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
                                    controller: TextEditingController(
                                        text: _controller.phoneNumber),
                                    onChanged: (val) {
                                      _controller.phoneNumber = val;
                                    },
                                    validator: (value) {
                                      return value!.length < 10
                                          ? 'Phone Number must be greater than 10 intigers'
                                          : null;
                                    },
                                    onSaved: (value) {
                                      CreateCardContoller.to.phoneNumber =
                                          value!;
                                    },
                                    onTap: () {
                                      _formKey.currentState!.save();
                                      if (_controller.phoneNumber
                                          .toString()
                                          .isNotEmpty)
                                        print(_controller.phoneNumber);

                                      if (_controller.phoneNumber
                                          .toString()
                                          .isEmpty) print("NO phoneNumber");
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
                                          borderSide: new BorderSide(
                                              color: Colors.teal)),
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
                                    height: 5,
                                  ),
                                  Divider(),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                          hint: Text('Category'),
                                          underline: SizedBox(),
                                          value: _controller.selectedValue,
                                          onChanged: (newValue) {
                                            _controller.onSelected(newValue!);
                                            CreateCardContoller.to.category =
                                                newValue;
                                            _formKey.currentState!.save();
                                            print(_controller.category);
                                          },
                                          elevation: 10,
                                          items: _controller.item.map(
                                            (val) {
                                              return DropdownMenuItem<String>(
                                                value: val,
                                                child: Text(val),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ]),
                                  Text(_controller.selectedValue ==
                                          'Official Sponser'
                                      ? "Now you can see your full card"
                                      : controller.selectedValue ==
                                              'Activity Owner'
                                          ? "Now you can see your full card"
                                          : controller.selectedValue ==
                                                  'Security'
                                              ? "Now you can see your full card"
                                              : controller.selectedValue ==
                                                      'Service Provider'
                                                  ? "Now you can see your full card"
                                                  : "You must select category to see the complate card"),
                                  Divider(),
                                  SizedBox(
                                    height: 10,
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
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color.fromARGB(240, 100, 196, 184),
                                            Color.fromARGB(250, 74, 157, 196),
                                          ],
                                        )),
                                    child: TextButton(child: Obx(
                                      () {
                                        if (controller.appState() ==
                                            AppState.LOADING) {
                                          return CircularProgressIndicator(
                                            color: Colors.white,
                                          );
                                        }
                                        // if (controller.appState() == AppState.ERROR) {
                                        //   return FlatButton(
                                        // child: Text('try again',style: fontStyle,),
                                        //     onPressed: () async => controller.sendToServer(),
                                        //   );
                                        // }
                                        return Text(
                                          "Save",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            shadows: <Shadow>[
                                              Shadow(
                                                offset: Offset(3.0, 2.0),
                                                blurRadius: 4.0,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                            ],
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        );
                                      },
                                    ), onPressed: () async {
                                      var ok = await controller.sendToServer();
                                      if (ok) await Alerts.showOkMessageCard();
                                    }

                                        // onPressed:()
                                        // async {
                                        //   if (_formKey.currentState!.validate()) {
                                        //     _formKey.currentState!.save();

                                        //     Get.put<CreateCardContoller>(
                                        //         CreateCardContoller());

                                        //     await _controller.createNewCard2();
                                        //   }
                                        // },
                                        // child: Text(
                                        //   "Save",
                                        //   style: TextStyle(
                                        //     fontSize: 20.0,
                                        //     shadows: <Shadow>[
                                        //       Shadow(
                                        //         offset: Offset(3.0, 2.0),
                                        //         blurRadius: 4.0,
                                        //         color: Color.fromARGB(255, 0, 0, 0),
                                        //       ),
                                        //     ],
                                        //     color: Colors.white,
                                        //     fontWeight: FontWeight.bold,
                                        //   ),
                                        // )
                                        ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                            ],
                          ))))
        ]));
  }
}
