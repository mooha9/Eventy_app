import 'package:eventy_app/controllers/signup/signup_controller.dart';
import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
final _controller = SignUpController();
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
        Container(
          child: Positioned(
            right: 50,
              child: Image(
              height: 300,
              width: 300,
              image: AssetImage('assets/images/logo.png')
                      )
          ),
            ),
            Container(
              child: Positioned(
                top: 200,
                right: 50,
            
            child:SingleChildScrollView(

            child: Column(
              children: <Widget>[
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
                          icon: Icon(
                             _controller.isHidden
                                 ? Icons.visibility
                                 : Icons.visibility_off,
                          ),
                          onPressed:  _controller.passwordVisible

                      //       setState(() {
                      //         passwordVisible = !passwordVisible;
                      //       });
                      //     },
                      //   ),
                      // ),
                     
                    ),),
                     keyboardType: TextInputType.visiblePassword,
                      // obscureText: passwordVisible,
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
                      //   suffixIcon: IconButton(
                      //     icon: Icon(
                      //       passwordVisible2
                      //           ? Icons.visibility
                      //           : Icons.visibility_off,
                      //     ),
                      //     onPressed: () {
                      //       setState(() {
                      //         passwordVisible2 = !passwordVisible2;
                      //       });
                      //     },
                      //   ),
                      // ),
                      // keyboardType: TextInputType.visiblePassword,
                      // obscureText: passwordVisible2,
                    ),
                  ),
                ),
                ),

                SizedBox(
                  height: 10,
                ),

                Center(),

                Container(
                    child: Align(
                      alignment: Alignment(0.6, 0),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                          onPressed: _controller.forward(),
                          color: Color(0xff2f9d80),
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          splashColor: Colors.teal[250],

                          child: Text("NEXT",
                            style: TextStyle(fontSize: 20, color: Colors.white),),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.teal),
                          ),
                           
                      ),
                    )
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff2f9d80),

                        ),
                        children: [
                          TextSpan(
                            text: 'SIGN UP WITH  ',
                          ),
                          
                        ],
                      ),
                    ),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.grey, // foreground
                      ),
                      onPressed: () { },
                      child: 
                        Image.asset(
                          'assets/images/Google_icon-icons.com_66793.png',
                          height: 25.0,
                       ),),
                  ],
                ),

                SizedBox(
                  height: 15,
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
                        onTap: (){}
                    )
                ),
                
              ],
            ),
          ),
        ),
        ),
      ],
      ),
  
    );
  }
}