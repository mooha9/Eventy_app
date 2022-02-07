// ignore_for_file: unnecessary_import

import 'package:eventy_app/controllers/auth/signin_controller.dart';
import 'package:eventy_app/util/app_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:logger/logger.dart';

class SignIn extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    var _formKey = controller.formKey;
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
                    image: AssetImage('assets/images/logo.png'))),
            SingleChildScrollView(
              child: GetBuilder<SignInController>(
                init: SignInController(),
                builder: (controller) => Column(
                  children: [
                    Container(
                      constraints: BoxConstraints.tightFor(width: 350),
                      //width text field
                      margin: EdgeInsets.all(10),
                      child: Material(
                        // shadow
                        elevation: 5, //shadow
                        shadowColor: Colors.black, //color shadow
                        borderRadius: BorderRadius.circular(32.0),
                        child: Form(
                          key: _formKey,
                          child: TextFormField(
                            onSaved: (value) async {
                              controller.identifier = value!.trim();
                            },
                            onChanged: (value) {
                              controller.identifier = value.trim();
                              Logger().d("${controller.identifier}");
                            },
                            onTap: () {
                              Logger().d("${controller.identifier}");

                              // printInfo(info: "${_controller.identifier}");
                            },
                            validator: (value) {
                              if (value == null) {
                                Logger().d("ERROR");
                              }
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              //size Text field
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              labelText: "EMAIL or USERNAME",
                              labelStyle: TextStyle(fontSize: 15),
                              hintText: "Email@gmail.com",
                              //for example name
                              hintStyle: TextStyle(fontSize: 15),
                              suffixIcon: Icon(Icons.alternate_email_outlined),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
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
                        child: Form(
                          child: TextFormField(
                            onSaved: (value) {
                              controller.password = value!.trim();
                              Logger().d("${controller.password}");
                            },
                            onChanged: (value) {
                              controller.password = value.trim();
                              Logger().d("${controller.password}");
                            },
                            onTap: () {
                              Logger().d("${controller.password}");

                              // printInfo(info: "${_controller.identifier}");
                            },
                            validator: (value) {
                              if (value == null) {
                                Logger().d("ERROR");
                              }
                            },
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
                                  onPressed: controller.toggleHiddenStatus,
                                  icon: Icon(controller.isHidden
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                )),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: controller.isHidden,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "FORGET PASSWORD?",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[800],
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
                        child: MaterialButton(
                            elevation: 20,
                            color: Color(0xff2f9d80),
                            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                            splashColor: Color(0xff4ABD9F),
                            child: Obx(() {
                              if (controller.appState() == AppState.LOADING) {
                                return Center(
                                    widthFactor: 0.3,
                                    heightFactor: 0.5,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ));
                              } else {
                                // Logger().d(
                                //     "// controller.appState.value = AppState.LOADING; LIST ${controller.appState.value}");
                                // Logger().d(" ${controller.isPreesed.value.toString()}");

                                return Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                );
                              }
                            }),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0),
                              side: BorderSide(color: Color(0xff4ABD9F)),
                            ),
                            onPressed: () async => loginUser(_formKey))),
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
                          onPressed: controller.signUp,
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  loginUser(_formKey) async {
    Get.put<SignInController>(SignInController());
    //test the time request
    print(
        '======================================================================');

    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      await controller.signInUser();
      //test the time request
      print(
          '======================================================================');
      // await controller.loginUser2();
      // Logger().d(" loginUser Pressed login value is  : $a");

    }
  }
}
