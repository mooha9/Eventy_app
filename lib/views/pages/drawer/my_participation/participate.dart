import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyParticipate extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Text(
                  'My Participation',
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
                    Icons.now_widgets_rounded,
                    color: Colors.black54,
                  ),
                  text: 'Now'),
              Tab(
                  icon: Icon(
                    Icons.history_rounded,
                    color: Colors.black54,
                  ),
                  text: 'Pervios'),
            ],
          ),
          titleSpacing: 20,
        ),
        body: TabBarView(
          children: [
            buildPage1('Now'),
            buildPage2('Pervios'),
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
              child: Center(
                child: Text(
                  'Now',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 28,
                  ),
                ),
              )),
        ),
      );

  Widget buildPage2(String text) => Center(
        child: Container(
            height: 800.0,
            margin: new EdgeInsets.symmetric(vertical: 2.0),
            child: Center(
              child: Text(
                'Pervios',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
            )),
      );
}
