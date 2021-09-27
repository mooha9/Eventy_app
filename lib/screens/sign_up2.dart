import 'package:eventy_app/widgets/buttomNavbar.dart';
import 'sign_up.dart';
import 'package:flutter/material.dart';

class SignUp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUp2State();
  }
}

var currentSelectedValue;
const deviceTypes = ["MALE", "FEMALE","NOT SAY"];
var currentSelectedValue1; //contry
const deviceTypes1 = ["Saudi Arabia", "Other"];
var currentSelectedValue2; //state
const deviceTypes2 = ["Qassim", "Other"];
var currentSelectedValue3; //city
const deviceTypes3 = ["Buradah", "Unazah", "other"];

class SignUp2State extends State<SignUp2> {
  void changeScreen(BuildContext context1 ,int n) {
    Navigator.of(context1).pushReplacement(MaterialPageRoute(builder: (_) {
      if (n == 2)return SignUp();
      return BottomNav();
    }));
  }

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
            Center(),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 55),
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
                            hint: Text("SELECT COUNTREY"),
                            value: currentSelectedValue1,
                            isDense: true,
                            onChanged: (newValue) {
                              setState(() {
                                currentSelectedValue1 = newValue;
                              });
                              print(currentSelectedValue1);
                            },
                            items: deviceTypes1.map((String value) {
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
              padding: EdgeInsets.symmetric(horizontal: 55),
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
                            hint: Text("SELECT STATE"),
                            value: currentSelectedValue2,
                            isDense: true,
                            onChanged: (newValue) {
                              setState(() {
                                currentSelectedValue2 = newValue;
                              });
                              print(currentSelectedValue2);
                            },
                            items: deviceTypes2.map((String value) {
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
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 55),
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
                            value: currentSelectedValue3,
                            isDense: true,
                            onChanged: (newValue) {
                              setState(() {
                                currentSelectedValue3 = newValue;
                              });
                              print(currentSelectedValue3);
                            },
                            items: deviceTypes3.map((String value) {
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
              padding: EdgeInsets.symmetric(horizontal: 55),
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
                            value: currentSelectedValue,
                            isDense: true,
                            onChanged: (newValue) {
                              setState(() {
                                currentSelectedValue = newValue;
                              });
                              print(currentSelectedValue);
                            },
                            items: deviceTypes.map((String value) {
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
              constraints: BoxConstraints.tightFor(width: 300),
              //width text field
              margin: EdgeInsets.all(10),
              child: Material(
                // shadow
                elevation: 10, //shadow
                shadowColor: Colors.black, //color shadow
                borderRadius: BorderRadius.circular(32.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
              height: 20,
            ),
            Container(
                child: Align(
                  alignment: Alignment(0.6, 0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                      onPressed: () => changeScreen(context, 1),
                      color: Color(0xff2f9d80),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      splashColor: Color(0xff4ABD9F),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                        side: BorderSide(color: Color(0xff4ABD9F)),
                      )),
                )),
            SizedBox(
              height: 20,
            ),
          
          ],
        ),
      ),
    );
  }
}
