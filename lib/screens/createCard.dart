
import 'package:eventy_app/screens/manage_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http ;
import 'dart:async';
import 'dart:convert';
import 'package:eventy_app/database/card.dart';

// ignore: must_be_immutable
class CreateCard extends StatefulWidget {
  String id ;
  CreateCard(this.id);
  @override
  _CreateCardState createState() => _CreateCardState(this.id);
}

class _CreateCardState extends State<CreateCard> {
  String id ;
  _CreateCardState(this.id);
  DBCard card = DBCard('','','','','','','','','');
  
  Future save() async{
    if (card.id == ' '){
       await http.post(Uri.parse("http://localhost:1337/card/"),
       headers:<String,String>{'Context-Type':'application/json;charset=UTF-8'},
       body:<String,String>{'category':card.category,'name':card.name,'workType':card.workType,'city':card.city,'url_work':card.url_work,'tagLine':card.tagLine,'email':card.email,'phoneNumber':card.phoneNumber,});
    }
    else{
       await http.put(Uri.parse("http://localhost:1337/card/${card.id}"), 
       headers:{'Context-Type':'application/json;charset=UTF-8'},
        body:{'category':card.category,'name':card.name,'workType':card.workType,'city':card.city,'url_work':card.url_work,'tagLine':card.tagLine,'email':card.email,'phoneNumber':card.phoneNumber,}); 
    }
   Navigator.push(context, new MaterialPageRoute(builder: (context)=>ManageCard(this.id)));
  }

  void initState() {
    super.initState();
    if(this.id !=''){
      getOne();
    }
    
  }
  void getOne() async{
   var data = await http.get(Uri.parse("http://localhost:1337/card/${this.id}"));
   var c = json.decode(data.body);
   setState(() {
        card = DBCard (c['id'],c['category'],c['name'],c['workType'],c['city'],c['url_work'],c['tagLine'],c['email'],c['phoneNumber'],);
   });
  }
  @override
  
  Widget build(BuildContext context) {
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
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    SizedBox(height: 10.0),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: false,
                            child: TextField(controller: TextEditingController(text:card.id),)),
                          Divider(),
                          SelectCategory(),
                          SizedBox(
                            height: 3,
                          ),
                          Divider(),
                          TextField(
                            controller: TextEditingController(text:card.name),
                            onChanged: (val){
                              card.name= val;
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
                          TextField(
                            controller: TextEditingController(text:card.workType),
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
                          // TextField(
                            
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
                          TextField(
                            controller: TextEditingController(text:card.city),
                            onChanged: (val){
                              card.city= val;
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
                          TextField(
                            controller: TextEditingController(text:card.url_work),
                            onChanged: (val){
                              card.url_work= val;
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
                          TextField(
                            controller: TextEditingController(text:card.tagLine),
                            onChanged: (val){
                              card.tagLine= val;
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
                          TextField(
                            controller: TextEditingController(text:card.phoneNumber),
                            onChanged: (val){
                              card.phoneNumber= val;
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
                          TextField(
                            controller: TextEditingController(text:card.phoneNumber),
                            onChanged: (val){
                              card.phoneNumber= val;
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
                            height: 120,
                          ),
                        ])
                  ])),
          Positioned(
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
                      Color.fromARGB(240, 78, 192, 241),
                      Color.fromARGB(240, 0, 217, 206),
                    ],
                  )),
              child: TextButton(
                  onPressed: save ,
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
