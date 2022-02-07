import 'package:flutter/material.dart';

class ProfilePrivacy extends StatefulWidget {
  @override
  _ProfilePrivacyState createState() => _ProfilePrivacyState();
}

class _ProfilePrivacyState extends State<ProfilePrivacy> {
  bool passwordVisible = true;
  bool passwordVisible2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        toolbarHeight: 90,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Text(
                'Privacy  ',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(),
          Container(
            constraints: BoxConstraints.tightFor(width: 300),
            //width text field
            margin: EdgeInsets.all(15),
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
                  labelText: "Your Email",
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: "ah*****-@gmail.com",
                  //for example name
                  hintStyle: TextStyle(fontSize: 15),
                  suffixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints.tightFor(width: 300),
            //width text field
            margin: EdgeInsets.all(15),
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
            margin: EdgeInsets.all(15),
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
                  labelText: "OLD PASSWORD",
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: "ENTER YOUR PASSWORD",
                  //for example name
                  hintStyle: TextStyle(fontSize: 15),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
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
            margin: EdgeInsets.all(15),
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
                  labelText: "NEW PASSWORD",
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: "ENTER YOUR PASSWORD",
                  //for example name
                  hintStyle: TextStyle(fontSize: 15),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
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
            margin: EdgeInsets.all(15),
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
                  labelText: "CONFIRM PASSWORD",
                  labelStyle: TextStyle(fontSize: 15),
                  hintText: "CONFIRM YOUR PASSWORD",
                  //for example name
                  hintStyle: TextStyle(fontSize: 15),
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
        ],
      ),
    );
  }
}
