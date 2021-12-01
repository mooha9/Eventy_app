import 'package:eventy_app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'bindings/bindings.dart';
import 'helpers/consts/app_colors.dart';


void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  InitialBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     smartManagement: SmartManagement.full,
     debugShowCheckedModeBanner: false,
     theme: Constants.lightTheme,
     // StartPage(),
     initialRoute: '/Onboarding',
     initialBinding: InitialBinding(),
     getPages: Routes.routes
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