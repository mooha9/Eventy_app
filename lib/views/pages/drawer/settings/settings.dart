import 'package:eventy_app/views/pages/drawer/settings/profile_edit.dart';
import 'package:eventy_app/views/pages/drawer/settings/profile_privacy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right:55.0),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.teal,
                      
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saleh',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "I love coffee",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),            ListTile(
                title: Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.teal[400],
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ProfileEdit();
                      },
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Privacy',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.privacy_tip,
                  size: 30,
                  color: Colors.teal[400],
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ProfilePrivacy();
                      },
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(

                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.logout,
                  size: 30,
                  color: Colors.teal[400],
                ),
                onTap: (){
                  Get.defaultDialog(
                      title: "Logout",
                      // middleText: "Are you sure you want to logout?",
                      content: Column(
                       children:[
                         SizedBox(
                          height: 20,
                        ),
                         Text('Are you sure you want to logout?'),
                           SizedBox(
                          height: 40,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            
                            // ignore: deprecated_member_use
                            FlatButton(
                            color: Colors.teal,
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          // ignore: deprecated_member_use
                          FlatButton(
                            child: Text('Logout'),
                            onPressed:(){
                                  Get.offAllNamed("/SignIn");
                            }
                          ),
                          ],
                        ),
                        ] 
                      )  
                  );
                }
                
                
              ),
              Divider(),
            ],
          ),
        ),
      );
  }
 
  // showLogoutDealog() {
  //      return AlertDialog(
  //             title: Text('Logout'),
  //             content: Text('Are you sure you want to logout?'),
  //             actions: <Widget>[
  //               // ignore: deprecated_member_use
  //               FlatButton(
  //                 color: Colors.teal,
  //                 child: Text(
  //                   'Cancel',
  //                   style: TextStyle(color: Colors.white),
  //                 ),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               ),
  //               // ignore: deprecated_member_use
  //               FlatButton(
  //                 child: Text('Logout'),
  //                 onPressed:(){}
  //               ),
  //             ],
  //           );
  //         });
  //   }

}

