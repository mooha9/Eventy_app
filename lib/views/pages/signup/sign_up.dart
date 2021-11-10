
import 'package:eventy_app/controllers/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


class SignUp extends StatelessWidget {

  final _controller = Get.put(SignUpController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
              children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backGround.png"), 
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Center(
                  child: Image(
                  height: 300,
                  width: 300,
                  image: AssetImage('assets/images/logo.png')
                          )
              ),
                ),
          ],
        ),
            Container(
            child:SingleChildScrollView(
            child:  GetBuilder<SignUpController>(
    init: SignUpController(),
    builder: (controller) =>(
               Column(
                children: <Widget>[
                            SizedBox(
                    height: 180,
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
                    height: 30,
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
                          contentPadding: EdgeInsets.all(15),
                          //size Text field
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          labelText: "FIRST NAME",
                          labelStyle: TextStyle(fontSize: 15),
                          hintText: "SALEH",
                          //for example name
                          hintStyle: TextStyle(fontSize: 15),
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
                          labelStyle: TextStyle(fontSize: 15),
                          hintText: "AHMAD",
                          //for example name
                          hintStyle: TextStyle(fontSize: 15),
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
                          labelStyle: TextStyle(fontSize: 15),
                          hintText: "ah*****-@gmail.com",
                          //for example name
                          hintStyle: TextStyle(fontSize: 15),
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
                          labelStyle: TextStyle(fontSize: 15),
                          hintText: "055*******",
                          //for example name
                          hintStyle: TextStyle(fontSize: 15),
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
                          labelStyle: TextStyle(fontSize: 15),
                          hintText: "ENTER YOUR PASSWORD",
                          //for example name
                          hintStyle: TextStyle(fontSize: 15),
                          suffixIcon: IconButton(
                           onPressed:  _controller.toggleHidden1Status,
                              icon: Icon(
                                 _controller.isHidden1 ? Icons.visibility_off : Icons.visibility
                              ),
                        )
                      ),
                       keyboardType: TextInputType.visiblePassword,
                      obscureText: _controller.isHidden1,
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
                          labelStyle: TextStyle(fontSize: 15),
                          hintText: "CONFIRM YOUR PASSWORD",
                          //for example name
                          hintStyle: TextStyle(fontSize: 15),
                          suffixIcon: IconButton(
                           onPressed:  _controller.toggleHidden2Status,
                              icon: Icon(
                                 _controller.isHidden2 ? Icons.visibility_off : Icons.visibility
                              ),
                        )
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _controller.isHidden2,
                      ),
                    ),
                  ),
            
                  SizedBox(
                    height: 30,
                  ),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    
                      Container(
                        
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              
                                onPressed:_controller.next,
                                padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                                splashColor: Colors.teal[250],
            
                                child: Text("NEXT",
                                  style: TextStyle(fontSize: 20, color: Colors.white),),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.teal),
                                ),
                                 
                            ),
                      ),  
                    ],
                  ),
                ],
              )
            ),
          ),
        ),
            )
      ],
      ),
  
    );
  }
}