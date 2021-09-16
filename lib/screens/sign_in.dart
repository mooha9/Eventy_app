import 'package:eventy_app/widgets/buttomNavbar.dart';
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
    Navigator.of(context1).pushReplacement(MaterialPageRoute(builder: (_)
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
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backGround.png"), 
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Container(
              child: Image(
              height: 300,
              width: 300,
              image: AssetImage('assets/images/logo.png')
              
               )
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
                    labelStyle: TextStyle(fontSize: 15),
                    hintText: "ahmed220",
                    //for example name
                    hintStyle: TextStyle(fontSize: 15),
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
                    labelStyle: TextStyle(fontSize: 15),
                    hintText: "ENTER YOUR PASSWORD",
                    //for example name
                    hintStyle: TextStyle(fontSize: 15),

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
                  color: Color(0xff2f9d80),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  splashColor: Color(0xff4ABD9F),
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color: Color(0xff4ABD9F)),
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
                        color: Colors.blueAccent,
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
