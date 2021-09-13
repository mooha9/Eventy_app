import 'package:eventy_app/main.dart';
import 'package:flutter/material.dart';


// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.teal[50],
          appBar: AppBar(
            backgroundColor: Colors.teal[100],
        toolbarHeight: 300,
        elevation: 10,
         shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(10),
      ),
    ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.black54,
              indicatorWeight: 4,
              labelColor:Colors.teal,
              tabs: [
                Tab(icon: Icon(Icons.history_rounded, color: Colors.black54,), text: 'History'),
                Tab(icon: Icon(Icons.credit_card, color: Colors.black54,), text: 'Card'),
                
              ],
            ),
            
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              buildPage('History'),
              buildPage('Card'),

            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}

    // return Scaffold(
    //   backgroundColor: Colors.teal[100],
    //   appBar: AppBar(
        

    //     title: Column(

    //       mainAxisAlignment: MainAxisAlignment.center,

    //       children: [
    //          Container(
    //             decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               boxShadow: [
    //                 BoxShadow(
    //                   color: Colors.grey.withOpacity(0.5),
    //                   spreadRadius: 2,
    //                   blurRadius: 5,
    //                 ),
    //               ],
    //             ),
    //             child: CircleAvatar(
    //               radius: 100,
    //               backgroundColor: Colors.teal,
    //              child: Icon(
    //           Icons.person_rounded,
    //           color: Colors.grey,
    //           size: 150,
    //         ),
    //             ),
    //          ),
    //         SizedBox(height: 20,),
    //         Text(
              
    //           'Profile',
    //           style: TextStyle(
    //             color: Colors.black54,
    //             fontSize: 30,
    //           ),
    //         ),
            
    //       ],
    //     ),
    //   ),
      
    // );
  
