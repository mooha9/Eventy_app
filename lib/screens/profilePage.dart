import 'package:eventy_app/util/data.dart';
import 'package:eventy_app/widgets/eventItem.dart';
import 'package:flutter/material.dart';

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
              buildPage1('History'),
              buildPage2('Card'),
            ],
          ),
        ),
      );
  Widget buildPage1(String text) => Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
      height:800.0,
      margin: new EdgeInsets.symmetric(vertical: 2.0),
      child: GridView.builder(
          itemCount: events.length,
          itemBuilder: (BuildContext context, int index) {
            Map event = events[index];
            return EventItem(
              event: event,
            );
          }, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent:400,
            childAspectRatio: 7/8,
            mainAxisSpacing: 10,
            crossAxisSpacing:10, 
            
            
             )
      )
    ),
        ),
      );
      Widget buildPage2(String text) => Center(
        child: Container(
      height:800.0,
      margin: new EdgeInsets.symmetric(vertical: 2.0),
      child: Card(
          
      ),
        ),
      );
}