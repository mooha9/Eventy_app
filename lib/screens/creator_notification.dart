import 'package:eventy_app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CreatorNotification extends StatefulWidget {
  @override
  _CreatorNotificationState createState() => _CreatorNotificationState();
}

class _CreatorNotificationState extends State<CreatorNotification> {
  @override
  Widget build(BuildContext context)=> DefaultTabController(
initialIndex: 1,
        length: 2,
        child: Scaffold(
      
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        toolbarHeight: 140,
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
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                'Creator Notification',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
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
                      Icons.dashboard_rounded,
                      color: Colors.black54,
                    ),
                    text: 'Dashboard'),
                Tab(
                    icon: Icon(
                      Icons.track_changes,
                      color: Colors.black54,
                    ),
                    text: 'Request'),
              ],
            ),
            titleSpacing: 20,
      ),
      body: TabBarView(
        
            children: [
            Container(
              child:dashBoard(),
            ),
            Container(
              
              child:request(),
            ) 
            ],
          ),

  
  )
    
  );
  

}

dashBoard() {

}

request() {
  return
  Padding(
    padding: const EdgeInsets.only(left: 20.0, top: 20),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        
        Row(
          children: [
            
              
               Container(child: Text('data'),),
               SizedBox(width: 50,),
              Container(child: Text('data'),),
              SizedBox(width: 50,),
              Container(child: Text('data'),),
              SizedBox(width: 50,),
              Container(child: Text('data'),),
               Container(child: Text('data'),),
               SizedBox(width: 50,),
              Container(child: Text('data'),),
              SizedBox(width: 50,),
              Container(child: Text('data'),),
              SizedBox(width: 50,),
              Container(child: Text('data'),),
               Container(child: Text('data'),),
               SizedBox(width: 50,),
              Container(child: Text('data'),),
              SizedBox(width: 50,),
              Container(child: Text('data'),),
              SizedBox(width: 50,),
              Container(child: Text('data'),),
              ],
            ),
            

          ],
 ),
        
    
  );
}
