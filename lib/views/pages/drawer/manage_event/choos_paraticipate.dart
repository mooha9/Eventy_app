import 'package:flutter/material.dart';
import 'package:flutter_spinbox/material.dart'; // or flutter_spinbox.dart for both

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
              bottom: Radius.circular(10),
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
                    Icons.note_alt_outlined,
                    color: Colors.black54,
                  ),
                  text: 'Register by ID'),
              Tab(
                  icon: Icon(
                    Icons.person_add,
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
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
    child: Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'Card ID :',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Insert Card ID',
            prefixIcon: const Icon(
              Icons.credit_card,
              color: Colors.teal,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // ignore: deprecated_member_use
            FlatButton(
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                  top: Radius.circular(10),
                ),
              ),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    )),
  );
}

selectParticipate() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
    child: Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'Select what you need from other \nto participate you :',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Insert service ',
              prefixIcon: const Icon(
                Icons.person_pin_rounded,
                color: Colors.teal,
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 120,
          child: SpinBox(
            cursorColor: Colors.teal,
            showCursor: false,
            min: 0,
            max: 10,
            value: 0,
            onChanged: (value) => print(value),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 6,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Write discription for your needs',
              prefixIcon: const Icon(
                Icons.description,
                color: Colors.teal,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // ignore: deprecated_member_use
        Center(
          // ignore: deprecated_member_use
          child: FlatButton(
            height: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
                top: Radius.circular(10),
              ),
            ),
            child: Text(
              'Share to participate ',
              style: TextStyle(fontSize: 20.0),
            ),
            color: Colors.teal,
            textColor: Colors.white,
            onPressed: () {},
          ),
        ),
      ],
    )),
  );
}
