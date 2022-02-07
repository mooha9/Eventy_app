// ignore_for_file: unnecessary_import

import 'package:eventy_app/views/pages/drawer/manage_event/choos_paraticipate.dart';
import 'package:eventy_app/views/pages/drawer/manage_event/creator_notifications.dart';
import 'package:flutter/material.dart';
// import 'package:eventy_app/util/over_viewdata_event.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';

class PublicEvent extends StatefulWidget {
  @override
  _PublicEventState createState() => _PublicEventState();
}

class _PublicEventState extends State<PublicEvent> {
  DateTime selectedDate = DateTime.now();
  String dropdownValue = 'Category';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Text(
                'Public Event',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.add_alert,
                color: Colors.black45,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return CreatorNotification();
                    },
                  ),
                );
              },
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
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    uploadImage(),
                    SizedBox(height: 10.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Divider(),
                        SelectCategory(),
                        SizedBox(
                          height: 3,
                        ),
                        Divider(),
                        TextField(
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
                                borderSide: new BorderSide(color: Colors.teal)),
                            hintText: 'Event Name',
                            helperText: 'Write name of your event.',
                            prefixIcon: const Icon(
                              Icons.festival_outlined,
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
                        TextField(
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
                                borderSide: new BorderSide(color: Colors.teal)),
                            hintText: 'Short Note',
                            helperText: 'Write a short note e.g. only for men.',
                            prefixIcon: const Icon(
                              Icons.sticky_note_2_outlined,
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
                        TextField(
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
                                borderSide: new BorderSide(color: Colors.teal)),
                            hintText: 'Location Name',
                            helperText: 'Insert name of the location.',
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
                        TextField(
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
                                borderSide: new BorderSide(color: Colors.teal)),
                            hintText: 'Location URL',
                            helperText: 'Insert your location from google map.',
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
                        TextField(
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
                                borderSide: new BorderSide(color: Colors.teal)),
                            hintText: 'Time Start',
                            helperText: 'When will start your event.',
                            prefixIcon: const Icon(
                              Icons.timer_rounded,
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
                        TextField(
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
                                borderSide: new BorderSide(color: Colors.teal)),
                            hintText: 'Time End',
                            helperText: 'When will end your event.',
                            prefixIcon: const Icon(
                              Icons.timer_rounded,
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
                        TextField(
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
                                borderSide: new BorderSide(color: Colors.teal)),
                            hintText: 'Number Of Days',
                            helperText: 'How many days your event will be.',
                            prefixIcon: const Icon(
                              Icons.view_day,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal, // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () {
                                _selectDate(context);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.date_range,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Enter Event Date"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Divider(),
                        SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      minLines:
                          5, // any number you need (It works as the rows for the textarea)
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: new InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        border: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal)),
                        hintText: 'Tell us about your event...',
                        helperText: 'Write all details of your event.',
                        prefixIcon: const Icon(
                          Icons.description,
                          color: Colors.teal,
                        ),
                        prefixText: ' ',
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 5.0),
                    Text(
                      "Add Photos",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    buildPhotosList(),
                    SizedBox(height: 10.0),
                    Divider(),
                    Text(
                      "Service Provider :",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    buildUsersList(context),
                    SizedBox(height: 10.0),
                    Divider(),
                    Text(
                      "Activity Owner :",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    buildUsersList(context),
                    SizedBox(height: 10.0),
                    Divider(),
                    Text(
                      "Official Sponsors :",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    buildUsersList(context),
                    SizedBox(height: 80.0),
                    Divider(),
                  ])),
          Positioned(
            bottom: 40,
            left: 20,
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
                        Color.fromARGB(250, 74, 157, 196),
                        Color.fromARGB(240, 100, 196, 184),
                      ])),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Save As Draft",
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
          Positioned(
            bottom: 40,
            left: 250,
            child: Container(
              height: 60,
              width: 150,
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
              child: TextButton(
                  onPressed: () {
                    showSubmitDialog();
                  },
                  child: Text(
                    "Submit",
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
        ],
      ),
    );
  }

  showSubmitDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Submit'),
            content: Text('Are you sure to share your event?'),
            actions: <Widget>[
              // ignore: deprecated_member_use
              FlatButton(
                color: Colors.teal,
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                child: Text('yes, Share'),
                onPressed: () {},
              ),
            ],
          );
        });
  }

  uploadImage() {
    return Container(
      height: 240.0,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          InkWell(
            splashColor: Colors.black12,
            child: Container(
              color: Colors.teal[200],
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Text('Selecte images'),
                ),
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
            splashColor: Colors.black12,
            child: Container(
              color: Colors.teal[200],
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Text('Selecte images'),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.black12,
            child: Container(
              color: Colors.teal[200],
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Text('Selecte images'),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.black12,
            child: Container(
              color: Colors.teal[200],
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Text('Selecte images'),
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.black12,
            child: Container(
              color: Colors.teal[200],
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Text('Selecte images'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.teal, // header background color
              onPrimary: Colors.white, // header text color
              onSurface: Colors.teal, // body text color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.blue[300], // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}

buildUsersList(context) {
  return Container(
      height: 80.0,
      width: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              child: IconButton(
                splashRadius: 40,
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 40,
                  color: Colors.teal,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ChooseParticipate();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ));
}

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _SelectCategoryState extends State<SelectCategory> {
  String dropdownValue = 'All';

  @override
  Widget build(BuildContext context) {
    return Row(
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
            'All',
            'Workshops',
            'Tech',
            'Conferences',
            'Sports',
            'Others'
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
    );
  }
}
