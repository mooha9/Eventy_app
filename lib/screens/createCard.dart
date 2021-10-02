
import 'package:eventy_app/screens/saveCard.dart';
import 'package:eventy_app/screens/sharePlane.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:qr_flutter/qr_flutter.dart';



class CreateCard extends StatefulWidget {
  @override
  _CreateCardState createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
final name = TextEditingController();
  @override
   void dispose() {
    // Clean up the controller when the widget is disposed.
    name.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
               padding: const EdgeInsets.only(right:45.0),
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
        ),),
      body: Stack(   
        children: <Widget>[
          Container(
            color: Colors.teal[50],
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              children: <Widget>[
                SizedBox(height: 10.0),
                cardArea(),
                SizedBox(height: 10.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Divider(),
                    SelectCategory(),
                    SizedBox(height: 3,),
                  Divider(),
                    TextField(
                      controller: name,
                    minLines: 1, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: new InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    border:OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Name',
                    helperText: 'Write name of your card.',
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Colors.teal,
                    ),
                    prefixText: ' ',
                    ),
                  ),
                  SizedBox(height: 3,),
                  Divider(),
                  SizedBox(height: 3,),
                  TextField(
                    minLines: 1, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: new InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    border:OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Category',
                    helperText: 'Which filed include.',
                    prefixIcon: const Icon(
                      Icons.category_rounded,
                      color: Colors.teal,
                    ),
                    prefixText: ' ',
                    ),
                  ),
                  SizedBox(height: 3,),
                  Divider(),
                  SizedBox(height: 3,),
                    TextField(
                    minLines: 1, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: new InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    border:OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Logo',
                    helperText: 'Insert png logo.',
                    prefixIcon: const Icon(
                      Icons.stream_rounded,
                      color: Colors.teal,
                    ),
                    prefixText: ' ',
                    ),
                  ),
                  SizedBox(height: 3,),
                  Divider(),
                  SizedBox(height: 3,),
                  TextField(
                    minLines: 1, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: new InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    border:OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Location',
                    helperText: 'Insert location.',
                    prefixIcon: const Icon(
                      Icons.location_pin,
                      color: Colors.teal,
                    ),
                    prefixText: ' ',
                    ),
                  ),
                  SizedBox(height: 3,),
                  Divider(),
                  SizedBox(height: 3,),
                    TextField(
                    minLines: 1, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: new InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    border:OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Link',
                    helperText: 'Link for your work.',
                    prefixIcon: const Icon(
                      Icons.link,
                      color: Colors.teal,
                    ),
                    prefixText: ' ',
                    ),
                  ),
                  SizedBox(height: 3,),
                  Divider(),
                  SizedBox(height: 3,),
                  TextField(
                    minLines: 1, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: new InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    border:OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Tagline',
                    helperText: 'Write a short note e.g. Ready To Setup Light For Events.',
                    prefixIcon: const Icon(
                      Icons.sell_outlined,
                      color: Colors.teal,
                    ),
                    prefixText: ' ',
                    ),
                  ),
                  SizedBox(height: 3,),
                  Divider(),
                  SizedBox(height: 3,),
                  TextField(
                    minLines: 1, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: new InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    border:OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Contact',
                    helperText: 'Insert phone number.',
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    prefixText: ' ',
                    ),
                  ),
                  SizedBox(height: 120,),
                  ])
          ])
            ), Positioned(
                          bottom: 40,
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
                                  Color.fromARGB(240,78, 192, 241),
                                  Color.fromARGB(240,0, 217, 206),
                                  ],
                            )
                            ),
                            child: TextButton(  
                              onPressed: (){
                                 Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return SaveCard();
                                    },
                                  ),
                                );
                              },
                              child: Text("Save", style: TextStyle(
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
                        ),
        ],
      ),
      
    );
  }
   cardArea() {
    return Container(
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
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            
             Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
              children: [
                
                Text(name.text),
                QrImage(
                    data: "1234567890",
                    version: QrVersions.auto,
                    foregroundColor: Colors.white,
                    size: 100.0,
                  ),
              ],
            ),
          ),
        ],
      ),
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
          items: <String>['Service Provider', 'Activity Owner', 'Official Sponser']
              .map<DropdownMenuItem<String>>((String value) {
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
