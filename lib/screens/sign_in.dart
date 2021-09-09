import 'package:eventy_app/connect.dart';

import 'sign_up.dart';
import 'package:flutter/material.dart';

class Sign_in extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Sign_inState();
  }
}

class Sign_inState extends State<Sign_in> {
  void ChangeScreen(BuildContext context1, int n) {
    Navigator.of(context1).push(MaterialPageRoute(builder: (_)
        {
            if (n == 1) return Sign_up();
          return MyHomePage();
    }));
  }

  bool passwordVisible = true;
  bool passwordVisible2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              child: Text(
                "EVENTY",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.teal,
                  shadows: [
                    Shadow(
                      blurRadius: 2.0,
                      color: Colors.black,
                      offset: Offset(3.0, 3.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(),
            Container(
              constraints: BoxConstraints.tightFor(width: 300),
              //width text field
              margin: EdgeInsets.all(10),
              child: Material(
                // shadow
                elevation: 5, //shadow
                shadowColor: Colors.black, //color shadow
                borderRadius: BorderRadius.circular(32.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    //size Text field
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    labelText: "USERNAME",
                    labelStyle: TextStyle(fontSize: 20),
                    hintText: "ahmed220",
                    //for example name
                    hintStyle: TextStyle(fontSize: 20),
                    suffixIcon: Icon(Icons.person_outline),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints.tightFor(width: 300),
              //width text field
              margin: EdgeInsets.all(10),
              child: Material(
                // shadow
                elevation: 5, //shadow
                shadowColor: Colors.black, //color shadow
                borderRadius: BorderRadius.circular(32.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    //size Text field
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(fontSize: 20),
                    hintText: "ENTER YOUR PASSWORD",
                    //for example name
                    hintStyle: TextStyle(fontSize: 20),

                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: passwordVisible,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment(0.5, 0),
              child: Text(
                "FORGET PASSWORD",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                child: Align(
              alignment: Alignment(0.6, 0),
              child: RaisedButton(
                  onPressed: () => ChangeScreen(context, 2),
                  color: Colors.teal,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  splashColor: Colors.teal[250],
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.teal),
                  )),
            )),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "DON'T HAVE AN ACCOUNT ?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () => ChangeScreen(context, 1),
                    child: Text(
                      'SIGN UP',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
