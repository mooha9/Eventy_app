import 'package:eventy_app/controllers/auth/signin/signin_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SignIn extends StatelessWidget {
 
  SignIn ({Key? key}) : super(key: key);
  final loginFormKey = GlobalKey<FormState>();

  final _controller = Get.put(SignInController());
  
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
            
            SingleChildScrollView(
              child:  GetBuilder<SignInController>(
    init: SignInController(),
    builder: (controller) => 
 Column(
   key: loginFormKey,
                children:[
                  
                  Container(
                  constraints: BoxConstraints.tightFor(width: 350),
                  //width text field
                  margin: EdgeInsets.all(10),
                  child: Material(
                    // shadow
                    
                    elevation: 5, //shadow
                    shadowColor: Colors.black, //color shadow
                    borderRadius: BorderRadius.circular(32.0),
                    child: TextFormField(
                      controller: null,
                      validator: (v) {},
                      onSaved: (v) {},
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
                        // suffixIcon: Icon(Icons.person_outline),
                        
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              
            
            SizedBox(
              height: 30,
            ),
            Container(
              constraints: BoxConstraints.tightFor(width: 350),
              //width text field
              margin: EdgeInsets.all(10),
              child: Material(
                // shadow
                elevation: 5, //shadow
                shadowColor: Colors.black, //color shadow
                borderRadius: BorderRadius.circular(32.0),
                child:  TextFormField(
                  
                  controller: null,
                      validator: (v) {},
                      onSaved: (v) {},
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
                         onPressed:  _controller.toggleHiddenStatus,
                            icon: Icon(
                               _controller.isHidden? Icons.visibility_off : Icons.visibility
                            ),
                      )
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _controller.isHidden,
                  ),
                
              ),
            ),
            SizedBox(
              height: 5,
            ),Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                SizedBox(
                      width: 50,
                    ),
                 TextButton(
                   onPressed: (){},
                   child: Text( "FORGET PASSWORD?",
                        style: TextStyle(
                            fontSize: 13,
                            color:  Colors.grey[800],
                      ),
                    ),
                 ),
                  
               ],
             ),
            SizedBox(
              height: 40,
            ),
             
            Container(
              // ignore: deprecated_member_use
              child: RaisedButton(
                elevation: 20,
                  onPressed: _controller.nextAction,
                  color: Color(0xff2f9d80),
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  splashColor: Color(0xff4ABD9F),
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color: Color(0xff4ABD9F)),
                  )),
            ),
                

             SizedBox(
              height: 100,
            ),
            
               Row(
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
                    onPressed: _controller.signUp,
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
              
              ],
                ),
                ),),
          ],
        ),
      ),
    );
  }
}
