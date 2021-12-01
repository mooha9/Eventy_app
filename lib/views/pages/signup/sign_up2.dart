import 'package:eventy_app/controllers/auth/signup2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


// ignore: must_be_immutable
class SignUp2 extends StatelessWidget {
  SignUp2Controller signUp2Controller = SignUp2Controller();
  final _controller = SignUp2Controller();
  
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            child:Form(
               key: _formKey,
              child: SingleChildScrollView(
              child: GetBuilder<SignUp2Controller>(
                      init: SignUp2Controller(),
                      builder: (controller) =>
               Column(
                children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 40,),
                child: Material(
                  // shadow
                    elevation: 5, //shadow
                    shadowColor: Colors.black, //color shadow
                    borderRadius: BorderRadius.circular(32.0),
                    child: InputDecorator(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32))),
                          child: DropdownButtonHideUnderline(
                            child: 
                            // Obx(()=> 
                            
                            DropdownButton<String>(
                                hint: Text("SELECT COUNTRY"),
                                value: _controller.currentSelectedValue1 ,
                                isDense: true,
                                onChanged: (newValue) {
                                  _controller.setSelected1(newValue!) ;
                                  _controller.setSelected1 == newValue;
                                //  SignUp2Controller.to.country = newValue ;
                                  _formKey.currentState!.save();              
                                  print(newValue);
                                },
                               items: _controller.country.map(
                                      (val) {
                                        return DropdownMenuItem<String>(
                                          value: val,
                                          child: Text(val),
                                        );
                                      },
                                    ).toList(),
              ),
                          // ),
                        ),
                       
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
                    child:InputDecorator(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text("SELECT CITY"),
                              value: _controller.currentSelectedValue2 ,
                                isDense: true,
                                onChanged: (newValue) {
                                  _controller.setSelected2(newValue!) ;
                                  _controller.setSelected2 == newValue;
                                //  SignUp2Controller.to.city = newValue ;
                                  _formKey.currentState!.save();              
                                  print(newValue);
                              },
                              items: _controller.city.map(
                                      (val) {
                                        return DropdownMenuItem<String>(
                                          value: val,
                                          child: Text(val),
                                        );
                                      },
                                    ).toList(),
                                    ),
                            ),
                         
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
                    child: InputDecorator(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32))),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text("SELECT Gender"),
                              value: _controller.currentSelectedValue3 ,
                                isDense: true,
                                onChanged: (newValue) {
                                  _controller.setSelected3(newValue!) ;
                                //  SignUp2Controller.to.gender = newValue ;
                                  _formKey.currentState!.save();              
                                  print(newValue);
                              },
                              items: _controller.genderType.map(
                                      (val) {
                                        return DropdownMenuItem<String>(
                                          value: val,
                                          child: Text(val),
                                        );
                                      },
                                    ).toList(),
                              ),
                          ),
                       
                    )),
              ),
              // Container(
              //   margin: EdgeInsets.all(10),
              //   padding: EdgeInsets.symmetric(horizontal: 40,),
                
              //   child: Material(
              //     // shadow
              //     elevation: 10, //shadow
              //     shadowColor: Colors.black, //color shadow
              //     borderRadius: BorderRadius.circular(32.0),
              //     child: TextField(
              //       decoration: InputDecoration(
              //         contentPadding:
              //         EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              //         //size Text field
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(32.0)),
              //         labelText: "ENTER YOUR AGE",
              //         labelStyle: TextStyle(
              //           fontSize: 15,
              //         ),
              //         hintText: "for example : 30",
              //         //for example name
              //         hintStyle: TextStyle(fontSize: 15),
              //       ),
              //       keyboardType: TextInputType.number,
              //     ),
              //   ),
              // ),
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
            ),
            )]
      ),),);
          
    
  
}}
