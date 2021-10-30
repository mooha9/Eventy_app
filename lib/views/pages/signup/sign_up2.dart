import 'package:eventy_app/controllers/signup/signup2_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp2 extends StatelessWidget {

  var currentSelectedValue;
  static const genderTypes = ["MALE", "FEMALE","NOT SAY"];
  var currentSelectedValue1; //contry
  static const country = ["Saudi Arabia", "Other"];
  var currentSelectedValue2; //city
  static const cities = ["Buradah", "Unazah", "other"];

  final _controller = SignUp2Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backGround.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
                child: Image(
                    height: 300,
                    width: 300,
                    image: AssetImage('assets/images/logo.png'))),
            
            Container(
            child:SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 40,),
              child: Material(
                // shadow
                  elevation: 5, //shadow
                  shadowColor: Colors.black, //color shadow
                  borderRadius: BorderRadius.circular(32.0),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text("SELECT COUNTRY"),
                            value: currentSelectedValue1,
                            isDense: true,
                            onChanged: (newValue) {
                              // setState(() {
                              //   currentSelectedValue1 = newValue;
                              // });
                              print(currentSelectedValue1);
                            },
                            items: country.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  )),
            ),
            
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 40,),
              child: Material(
                // shadow
                  elevation: 5, //shadow
                  shadowColor: Colors.black, //color shadow
                  borderRadius: BorderRadius.circular(32.0),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text("SELECT CITY"),
                            value: currentSelectedValue2,
                            isDense: true,
                            onChanged: (newValue) {
                              // setState(() {
                              //   currentSelectedValue2 = newValue;
                              // });
                              print(currentSelectedValue2);
                            },
                            items: cities.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 40,),
              child: Material(
                // shadow
                  elevation: 5, //shadow
                  shadowColor: Colors.black, //color shadow
                  borderRadius: BorderRadius.circular(32.0),
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text("SELECT Gender"),
                            value: currentSelectedValue2,
                            isDense: true,
                            onChanged: (newValue) {
                              // setState(() {
                              //   currentSelectedValue2 = newValue;
                              // });
                              print(currentSelectedValue2);
                            },
                            items: genderTypes.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 40,),
              
              child: Material(
                // shadow
                elevation: 10, //shadow
                shadowColor: Colors.black, //color shadow
                borderRadius: BorderRadius.circular(32.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    //size Text field
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    labelText: "ENTER YOUR AGE",
                    labelStyle: TextStyle(
                      fontSize: 15,
                    ),
                    hintText: "for example : 30",
                    //for example name
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(

                  // ignore: deprecated_member_use
                             child: RaisedButton(
                              onPressed:_controller.next,
                             
                              padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                              splashColor: Colors.teal[250],

                              child: Text("SIGN UP",
                                style: TextStyle(fontSize: 20, color: Colors.white),),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(50.0),
                                side: BorderSide(color: Colors.teal),
                              ),
                             ),
            ),                        
                       
            SizedBox(
              height: 20,
            ),
          
          ],
        ), ),),
          ]
      ),),);
          
    
  
}}
