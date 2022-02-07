// ignore_for_file: unnecessary_import

import 'package:EventySA/controllers/auth/signup_controller.dart';
import 'package:EventySA/data/LocalStorage.dart';
import 'package:EventySA/util/app_state.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:logger/logger.dart';

class SignUp extends StatelessWidget {
  final _controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    // ignore: unused_local_variable
    LocalStorage storage = LocalStorage();

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
                        image: AssetImage('assets/images/logo.png'))),
              ),
            ],
          ),
          Container(
            child: Form(
              key: _formKey,
              child: (SingleChildScrollView(
                child: GetBuilder<SignUpController>(
                    init: SignUpController(),
                    builder: (controller) => Column(
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
                              child: Material(
                                // shadow
                                elevation: 5, //shadow
                                shadowColor: Colors.black, //color shadow
                                borderRadius: BorderRadius.circular(32.0),

                                child: TextFormField(
                                  onSaved: (value) {
                                    SignUpController.to.firstname = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.firstname.isNotEmpty)
                                      print(_controller.firstname);

                                    if (_controller.firstname.isEmpty)
                                      print("NO FIRSTNAME");
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      Logger().d("isEmpty");
                                    }
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    //size Text field
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
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
                              child: Material(
                                // shadow
                                elevation: 5, //shadow
                                shadowColor: Colors.black, //color shadow
                                borderRadius: BorderRadius.circular(32.0),

                                child: TextFormField(
                                  onSaved: (value) {
                                    SignUpController.to.lastname = value!;
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.lastname.isNotEmpty)
                                      print(_controller.lastname);

                                    if (_controller.lastname.isEmpty)
                                      print("NO LASTNAME");
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      Logger().d("isEmpty");
                                    }
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8),
                                    //size Text field
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
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
                              child: Material(
                                // shadow
                                elevation: 5, //shadow
                                shadowColor: Colors.black, //color shadow
                                borderRadius: BorderRadius.circular(32.0),

                                child: TextFormField(
                                  // initialValue: 'yaman@gmail.com',
                                  onSaved: (value) {
                                    _controller.email = value!;
                                  },
                                  validator: (value) {
                                    if (value == null) {
                                      Logger().d("ERROR");
                                    }
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.email.isNotEmpty)
                                      print(_controller.email);

                                    if (_controller.email.isEmpty)
                                      print("NO EMAIL");
                                  },

                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8),
                                    //size Text field
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
                                    labelText: "EMAIL",
                                    labelStyle: TextStyle(fontSize: 15),
                                    hintText: "ah*****-@gmail.com",
                                    //for example name
                                    hintStyle: TextStyle(fontSize: 15),
                                    suffixIcon:
                                        Icon(Icons.alternate_email_outlined),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
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

                                child: TextFormField(
                                  onSaved: (value) {
                                    _controller.username = value!;
                                  },
                                  validator: (value) {
                                    if (value == null) {
                                      Logger().d("ERROR");
                                    }
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.username.isNotEmpty)
                                      print(_controller.username);

                                    if (_controller.username.isEmpty)
                                      print("NO USERNAME");
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8),
                                    //size Text field
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
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

                                child: TextFormField(
                                  onSaved: (value) {
                                    _controller.phonenumber = value!;
                                  },
                                  validator: (value) {
                                    if (value == null) {
                                      Logger().d("ERROR");
                                    }
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.phonenumber.isNotEmpty)
                                      print(_controller.phonenumber);

                                    if (_controller.phonenumber.isEmpty)
                                      print("NO PHONENUMBER");
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(8),
                                    //size Text field
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
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
                              child: Material(
                                // shadow
                                elevation: 5, //shadow
                                shadowColor: Colors.black, //color shadow
                                borderRadius: BorderRadius.circular(32.0),

                                child: TextFormField(
                                  onSaved: (value) {
                                    _controller.password = value!;
                                  },
                                  validator: (value) {
                                    if (value == null) {
                                      Logger().d("ERROR");
                                    }
                                  },
                                  onTap: () {
                                    _formKey.currentState!.save();
                                    if (_controller.password.isNotEmpty)
                                      print(_controller.password);

                                    if (_controller.password.isEmpty)
                                      print("NO PASSWORD");
                                  },
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(8),
                                      //size Text field
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0)),
                                      labelText: "PASSWORD",
                                      labelStyle: TextStyle(fontSize: 15),
                                      hintText: "ENTER YOUR PASSWORD",
                                      //for example name
                                      hintStyle: TextStyle(fontSize: 15),
                                      suffixIcon: IconButton(
                                        onPressed:
                                            _controller.toggleHidden1Status,
                                        icon: Icon(_controller.isHidden1
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                      )),
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: _controller.isHidden1,
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

                                child: TextFormField(
                                  onSaved: (value) {
                                    _controller.confirmpassword = value!;
                                  },
                                  validator: (value) {
                                    if (value == null) {
                                      Logger().d("ERROR");
                                    }
                                  },
                                  onTap: () {
                                    if (_controller.confirmpassword ==
                                        _controller.password) {
                                      _formKey.currentState!.save();
                                      print(_controller.confirmpassword);
                                    } else {
                                      Get.snackbar(
                                        'NO ATTACH PASSWORD',
                                        'Make Sure password the same',
                                        colorText: Colors.white,
                                        backgroundColor: Colors.red,
                                      );
                                    }

                                    if (_controller.confirmpassword.isEmpty)
                                      print("NO ATTACH PASSWORD");
                                  },
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(8),
                                      //size Text field
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0)),
                                      labelText: "CONFIRM PASSWORD",
                                      labelStyle: TextStyle(fontSize: 15),
                                      hintText: "CONFIRM YOUR PASSWORD",
                                      //for example name
                                      hintStyle: TextStyle(fontSize: 15),
                                      suffixIcon: IconButton(
                                        onPressed:
                                            _controller.toggleHidden2Status,
                                        icon: Icon(_controller.isHidden2
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                      )),
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
                                    onPressed: ()
                                        // {
                                        //   Get.toNamed('/SignUp2');
                                        // },
                                        async {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();

                                        Get.put<SignUpController>(
                                            SignUpController());

                                        await _controller.createNewUser2();
                                      }
                                    },
                                    padding:
                                        EdgeInsets.fromLTRB(50, 15, 50, 15),
                                    splashColor: Colors.teal[250],
                                    child: Obx(() {
                                      if (_controller.appState2() ==
                                          AppState.LOADING) {
                                        return Center(
                                            widthFactor: 0.3,
                                            heightFactor: 0.5,
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                            ));
                                      } else {
                                        return Text(
                                          "NEXT",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        );
                                      }
                                    }),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(50.0),
                                      side: BorderSide(color: Colors.teal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
              )),
            ),
          )
        ],
      ),
    );
  }
}
