import 'package:eventy_app/screens/manage_event.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class ChooseParticipate extends StatefulWidget {
  @override
  _ChooseParticipateState createState() => _ChooseParticipateState();
}

class _ChooseParticipateState extends State<ChooseParticipate> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          backgroundColor: Colors.teal[100],
          toolbarHeight: 140,
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
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  'Choose Participate',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            //isScrollable: true,
            indicatorColor: Colors.black54,
            indicatorWeight: 4,
            labelColor: Colors.teal,
            tabs: [
              Tab(
                  icon: Icon(
                    Icons.format_list_numbered_rounded,
                    color: Colors.black54,
                  ),
                  text: 'Register by ID'),
              Tab(
                  icon: Icon(
                    Icons.people_outline,
                    color: Colors.black54,
                  ),
                  text: 'Search for Participate'),
            ],
          ),
          titleSpacing: 20,
        ),
        body: TabBarView(
          children: [
            Container(
              child: byID(),
            ),
            Container(
              child: selectParticipate(),
            )
          ],
        ),
      ));
}

byID() {
  return Stack(children: <Widget>[
    Container(
        color: Colors.teal[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
            ),
            Text(
              'Put the ID :',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
            ),
            TextField(
              minLines:
                  1, // any number you need (It works as the rows for the textarea)
              keyboardType: TextInputType.multiline,
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
              decoration: new InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                ),
                border: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                hintText: '',
              ),
            ),
          ],
        ))
  ]);
}

selectParticipate() {
  var dropdownValue;
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 13.0),
      ),
      Text(
        "What you loking for :",
        style: TextStyle(
          fontSize: 19.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
      ),
      Text(
        "Service Provider",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
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
          '1',
          '2',
          '3',
          '4',
          '5',
          '6',
          '7',
          '8',
          '9',
          '10',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
      Text(
        "Activity Owner",
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10.0,
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
          '1',
          '2',
          '3',
          '4',
          '5',
          '6',
          '7',
          '8',
          '9',
          '10',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
      Text(
        "Official Sponsors",
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
          '1',
          '2',
          '3',
          '4',
          '5',
          '6',
          '7',
          '8',
          '9',
          '10',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
      ),
      IconButton(
          icon: Icon(
            Icons.add_circle,
            size: 45,
            color: Colors.grey,
          ),
          onPressed: () {}),
      SizedBox(
        width: 50,
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
      ),
      Positioned(
          bottom: 30,
          child: Container(
            height: 60,
            width: 170,
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
                    Color.fromARGB(240, 78, 192, 241),
                    Color.fromARGB(240, 0, 217, 206),
                  ],
                )),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Share to participate",
                  style: TextStyle(
                    fontSize: 16.0,
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
          )),
    ],
  );
}

void setState(Null Function() param0) {}
