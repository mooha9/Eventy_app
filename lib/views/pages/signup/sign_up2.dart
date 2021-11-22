import 'package:eventy_app/controllers/auth/signup2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


// ignore: must_be_immutable
class SignUp2 extends StatelessWidget {

  

  SignUp2Controller signUp2Controller = SignUp2Controller();
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
            child: GetBuilder<SignUp2Controller>(
                    init: SignUp2Controller(),
                    builder: (controller) =>Column(
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
                          child: 
                          // Obx(()=> 
                          
                          DropdownButton<String>(
                              hint: Text("SELECT COUNTRY"),
                              value: signUp2Controller.currentSelectedValue1 ,
                              isDense: true,
                              onChanged: (data1) {
                                signUp2Controller.currentSelectedValue1 = data1 ;
                                signUp2Controller.update();
                                // setState(() {
                                //   currentSelectedValue1 = newValue;
                                // });
                                print(signUp2Controller.country);
                              },
                             items: [
                              for( var data1 in signUp2Controller.country)
                              DropdownMenuItem<String>(
                                value: data1,
                                child: Text(data1),
                              ),
                          
                            ]),
                        // ),
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
                            value: signUp2Controller.currentSelectedValue2 ,
                              isDense: true,
                              onChanged: (data2) {
                                signUp2Controller.currentSelectedValue2 = data2 ;
                                signUp2Controller.update();
                              // setState(() {
                              //   currentSelectedValue2 = newValue;
                              // });
                              print(signUp2Controller.cities);
                            },
                            items: [
                              for( var data2 in signUp2Controller.cities)
                              DropdownMenuItem<String>(
                                value: data2,
                                child: Text(data2),
                              ),
                          
                            ]),
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
                            value: signUp2Controller.currentSelectedValue3 ,
                              isDense: true,
                              onChanged: (data3) {
                                signUp2Controller.currentSelectedValue3 = data3 ;
                                signUp2Controller.update();
                              // setState(() {
                              //   currentSelectedValue2 = newValue;
                              // });
                              print(signUp2Controller.genderTypes);
                            },
                            items: [
                              for( var data3 in signUp2Controller.genderTypes)
                              DropdownMenuItem<String>(
                                value: data3,
                                child: Text(data3),
                              ),
                          
                            ]),
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
            )]
      ),),);
          
    
  
}}
