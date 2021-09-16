import 'package:eventy_app/screens/HomePage.dart';
import 'package:eventy_app/screens/ProfilePage.dart';
import 'package:eventy_app/screens/cardPage.dart';
import 'package:eventy_app/screens/favoritePage.dart';
import 'package:eventy_app/screens/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  int currentPage = 2;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.search,
              title: " ",
              onclick: () {
                SearchPage();
              }),
          TabData(
              iconData: Icons.favorite_border_outlined,
              title: " ",
              onclick: () {
                 FavoritePage();
              }),
          TabData(
              iconData: Icons.festival_sharp,
              title: " ",
              onclick: () {
                HomePage();
              }),
          TabData(
              iconData: Icons.credit_card_rounded,
              title: " ",
              onclick: () {
               CardPage();
              }),
          TabData(
              iconData: Icons.person_outline,
              title: " " ,
              onclick: () {
                ProfilePage();
              }),
        ],
        initialSelection: 2,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {

      case 0:
        return MaterialApp(
          home:SearchPage(),
        ) ;

      case 1:
        return MaterialApp(
          home:FavoritePage(),
        ) ;

      case 2:
        return MaterialApp(
          home:HomePage(),
        ) ;
      
      case 3:
        return MaterialApp(
          home:CardPage(),
        ) ;
      
      default:
        return MaterialApp(
          home:ProfilePage(),
        ) ;
    }
  }
}






















































































































































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