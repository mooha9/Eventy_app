import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Participate extends GetView {
  @override
  Widget build(BuildContext context) {
    return 
  DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.teal[50],
          appBar: AppBar(
            backgroundColor: Colors.teal[100],
            toolbarHeight: 100,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
            centerTitle: true,
            title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
               padding: const EdgeInsets.only(right:40.0),
              child: Text(
                'Participate  ',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
            ),
          ],
        ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.black54,
              indicatorWeight: 4,

              labelColor: Colors.teal,
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.emoji_people_rounded,
                      color: Colors.black54,
                    ),
                    text: 'Service Provider'),
                Tab(
                    icon: Icon(
                      Icons.storefront_outlined,
                      color: Colors.black54,
                    ),
                    text: 'Activity Owner'),
                    Tab(
                    icon: Icon(
                      Icons.groups_rounded ,
                      color: Colors.black54,
                    ),
                    text: 'Official Sponser'),
              ],
            ),
            titleSpacing: 20,
          ),
          
          body: TabBarView(
            children: [
              buildPage1('Service Provider'),
              buildPage2('Activity Owner'),
              buildPage3('Official Sponser'),
            ],
          ),
        ),
      ); 
  }


    Widget buildPage1(String text) => Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 800.0,
              margin: new EdgeInsets.symmetric(vertical: 2.0),
              child:Center(
            child: Text(
                'Service Provider',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
          )
              ),
        ),
      );

  Widget buildPage2(String text) => Center(
        child: Container(
          height: 800.0,
          margin: new EdgeInsets.symmetric(vertical: 2.0),
          child:Center(
            child: Text(
                'Activity Owner',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
          )),
        
      );
      Widget buildPage3(String text) => Center(
        child: Container(
          height: 800.0,
          margin: new EdgeInsets.symmetric(vertical: 2.0),
         child:Center(
            child: Text(
                'Official Sponser',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
          )
        ),
      );
}

