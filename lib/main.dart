import 'package:eventy_app/views/pages/home/cards.dart';
import 'package:eventy_app/views/pages/drawer/manage_event/choos_paraticipate.dart';
import 'package:eventy_app/views/pages/drawer/manage_card/create_card.dart';
import 'package:eventy_app/views/pages/drawer/manage_event/creator_notifications.dart';
import 'package:eventy_app/views/pages/home/event_details.dart';
import 'package:eventy_app/views/pages/home/favorites.dart';
import 'package:eventy_app/views/pages/home/home.dart';
import 'package:eventy_app/views/pages/drawer/manage_card/manage_card.dart';
import 'package:eventy_app/views/pages/drawer/manage_event/manage_event.dart';
import 'package:eventy_app/views/pages/home/notifications.dart';
import 'package:eventy_app/views/pages/drawer/participate_event/participate.dart';
import 'package:eventy_app/views/pages/drawer/manage_event/privet_event.dart';
import 'package:eventy_app/views/pages/home/profile.dart';
import 'package:eventy_app/views/pages/drawer/settings/profile_edit.dart';
import 'package:eventy_app/views/pages/drawer/settings/profile_privacy.dart';
import 'package:eventy_app/views/pages/drawer/manage_event/public_event.dart';
import 'package:eventy_app/views/pages/home/search.dart';
import 'package:eventy_app/views/pages/drawer/manage_event/select_plan.dart';
import 'package:eventy_app/views/pages/drawer/settings/settings.dart';
import 'package:eventy_app/views/pages/signin/sign_in.dart';
import 'package:eventy_app/views/pages/signup/sign_up.dart';
import 'package:eventy_app/views/pages/signup/sign_up2.dart';
import 'package:eventy_app/views/pages/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal[400]
        ),
      home: OnboardingPage(),
      // StartPage(),
      
      getPages: [ 
        GetPage(name: "/Onboarding", page: ()=> OnboardingPage()),
        GetPage(name: "/Home", page: ()=> HomePage()),
        GetPage(name: "/SignIn", page: ()=> SignIn()),
        GetPage(name: "/SignUp", page: ()=> SignUp()),
        GetPage(name: "/SignUp2", page: ()=> SignUp2()),
        GetPage(name: "/Favorite", page: ()=> FavoritePage()),
        GetPage(name: "/Search", page: ()=> SearchPage()),
        GetPage(name: "/Card", page: ()=> CardPage()),
        GetPage(name: "/Profile", page: ()=> ProfilePage()),
        GetPage(name: "/ManageCard", page: ()=> ManageCard('')),
        GetPage(name: "/ManageEvent", page: ()=> ManageEvent()),
        GetPage(name: "/Participate", page: ()=> Participate()),
        GetPage(name: "/Setting", page: ()=> Setting()),
        GetPage(name: "/ProfileEdit", page: ()=> ProfileEdit()),
        GetPage(name: "/ProfilePrivacy", page: ()=> ProfilePrivacy()),
        GetPage(name: "/SelectPlan", page: ()=> SelectPlan()),
        GetPage(name: "/PublicEvent", page: ()=> PublicEvent()),
        GetPage(name: "/PrivetEvent", page: ()=> PrivetEvent()),
        GetPage(name: "/NotificationPage", page: ()=> NotificationPage()),
        GetPage(name: "/CreatorNotification", page: ()=> CreatorNotification()),
        GetPage(name: "/CreateCard", page: ()=> CreateCard('')),
        GetPage(name: "/ChooseParticipate", page: ()=> ChooseParticipate()),
        GetPage(name: "/EventDetails", page: ()=> EventDetails()),
      ],
    );
  }
}


// class StartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//        return SignIn();
//   }
// }



    // if (sign_in == true) {
    //   return MyHomePage();
    // } else {
   
    // }




























































































































/*
import 'dart:js';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eventy_app/util/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';





return MaterialApp (
  debugShowCheckedModeBanner:false ,
  //home:HomeScreen()
  InitialRoute:'/',
  Routes:{
    '/':(context)=>HomeScreen(),
    Screen1.routeName:(context)=>Screen1 (),
    '/x2':(context)=>Screen2(),

  },

);
}
}











class HomeScreen extends StatefulWidget {
@override
  _HomeScreen createState()=> _HomeScreen();
}


class _HomeScreen extends StatefulWidget {
  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(
      n==1 ? Screen1.routeName : '/x2',
      arguments:{
        'id': n== 1 ? 10 : 20 ,
        'title': n==1 ? "info1" : "info2",
      },
    );
  }

  List<Widget> _pages=[
    Scaffold(
      appBar: AppBar(
        title: Text('page1'),
      ),
      body: Center(
        child: Text('text1'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('text2'),
      ),
    ),
  ];


int _selectedPageIndex=0;
  void _test(int index){
  setState((){
  _selectedPageIndex=index;
   });
  }

  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
      length: 5,
       child:Scaffold(
      appBar: AppBar(
        title: Text('page1'),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar : BottomNavigationBar (
        onTap: _test,
        items:
        [
          BottomNavigationBarItem(icon:Icon(Icons.search, size: 30),title: Text('part1')),
          BottomNavigationBarItem(icon:Icon(Icons.search, size: 30),title: Text('part2')),
        ],
      ),
    ),     
    );
}
  
  
  
    
    


}



(
       bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: <Widget>[
           BottomNavigationBarItems(icon:Icon(Icons.search, size: 30),Title: Text('part1')),
            Icon(Icons.question_answer_outlined, size: 30),
            Icon(Icons.festival, size: 35),
            Icon(Icons.favorite_border, size: 30),
            Icon(Icons.person,size: 30), 
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
      body: Container(
          
          child: Center(
            child: Column(
              children: <Widget>[

              ],
            ),
          ),
        ));
  } 
}
*/