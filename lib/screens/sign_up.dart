import 'sign_in.dart';
import 'package:flutter/material.dart';
import 'package:eventy_app/connect.dart';


class Sign_up extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Sign_upState();
  }
}

class Sign_upState extends State<Sign_up> {
  bool passwordVisible = true;
  bool passwordVisible2 = true;
  void ChangeScreen(BuildContext context1, int n) {
    Navigator.of(context1).push(MaterialPageRoute(builder: (_)
    {
      if (n == 1) return Sign_in();
      return MyHomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height:100,
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
                  height: 20,
                ),
                Container(
                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                Container(
                  constraints: BoxConstraints.tightFor(width: 300),
                  //width text field
                  margin: EdgeInsets.all(10),
                  //destance between text field and other
                  child: Material(// shadow
                    elevation: 5,//shadow
                    shadowColor: Colors.black,//color shadow
                    borderRadius: BorderRadius.circular(32.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        //size Text field
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        labelText: "FIRST NAME",
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: "SALEH",
                        //for example name
                        hintStyle: TextStyle(fontSize: 20),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints.tightFor(width: 300),
                  //width text field
                  margin: EdgeInsets.all(10),
                  child: Material(// shadow
                    elevation: 5,//shadow
                    shadowColor: Colors.black,//color shadow
                    borderRadius: BorderRadius.circular(32.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        //size Text field
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        labelText: "LAST NAME ",
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: "AHMAD",
                        //for example name
                        hintStyle: TextStyle(fontSize: 20),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints.tightFor(width: 300),
                  //width text field
                  margin: EdgeInsets.all(10),
                  child: Material(// shadow
                    elevation: 5,//shadow
                    shadowColor: Colors.black,//color shadow
                    borderRadius: BorderRadius.circular(32.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        //size Text field
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        labelText: "EMAIL",
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: "ah*****-@gmail.com",
                        //for example name
                        hintStyle: TextStyle(fontSize: 20),
                        suffixIcon: Icon(Icons.alternate_email_outlined),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints.tightFor(width: 300),
                  //width text field
                  margin: EdgeInsets.all(10),
                  child: Material(// shadow
                    elevation: 5,//shadow
                    shadowColor: Colors.black,//color shadow
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
                  child: Material(// shadow
                    elevation: 5,//shadow
                    shadowColor: Colors.black,//color shadow
                    borderRadius: BorderRadius.circular(32.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        //size Text field
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        labelText: "PHONE NUMBER",
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: "055*******",
                        //for example name
                        hintStyle: TextStyle(fontSize: 20),
                        suffixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints.tightFor(width: 300),
                  //width text field
                  margin: EdgeInsets.all(10),
                  child: Material(// shadow
                    elevation: 5,//shadow
                    shadowColor: Colors.black,//color shadow
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
                Container(
                  constraints: BoxConstraints.tightFor(width: 300),
                  //width text field
                  margin: EdgeInsets.all(10),
                  child: Material(// shadow
                    elevation: 5,//shadow
                    shadowColor: Colors.black,//color shadow
                    borderRadius: BorderRadius.circular(32.0),

                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        //size Text field
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        labelText: "CONFIRM PASSWORD",
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: "CONFIRM YOUR PASSWORD",
                        //for example name
                        hintStyle: TextStyle(fontSize: 20),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible2
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible2 = !passwordVisible2;
                            });
                          },
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Center(

                ),
                Container(

                    child: Align(
                      alignment: Alignment(0.6, 0),
                      child: RaisedButton(


                          onPressed: () => ChangeScreen(context, 2),
                          color: Colors.teal,
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          splashColor: Colors.teal[250],

                          child: Text("SIGN UP",
                            style: TextStyle(fontSize: 20, color: Colors.white),),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.teal),
                          )

                      ),
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal,

                    ),
                    children: [
                      TextSpan(
                        text: 'SIGN UP WITH  ',
                      ),
                      WidgetSpan(
                        child: Icon(Icons.account_box),
                      ),
                      WidgetSpan(
                        child: Icon(Icons.account_balance),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(

                    child: InkWell(//InkWell is same textbutton
                        child: Text(
                          "SIGN_IN",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                        ),
                        onTap:()=> ChangeScreen(context,1)
                    )


                ),

              ],

            ),
          ),
        ),
      ),
    );
  }
}
