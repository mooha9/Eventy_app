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

selectParticipate() {}
