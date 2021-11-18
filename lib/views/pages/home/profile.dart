import 'package:eventy_app/controllers/profile/profile_controller.dart';
import 'package:eventy_app/util/over_viewdata_event.dart';
import 'package:eventy_app/views/pages/drawer/app_drawer.dart';
import 'package:eventy_app/views/pages/home/event_item.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';


class ProfilePage extends StatelessWidget {
  final _controller = ProfileController();
  
  @override
  Widget build(BuildContext context) {
    Logger().d("ProfileView list " + "${_controller.eventList.length}");
  return
  DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          endDrawer: AppDrawer(
            
          ),
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
            centerTitle: true,
            title: Column(
              children: [
                Container(
                    decoration: BoxDecoration(),
                    child: Container(
                      width: double.infinity,
                      height: 350.0,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.teal,
                              backgroundImage: NetworkImage(
                              "${_controller.user!.profileImage}",
                              ),
                              radius: 50.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                               "${_controller.user!.email}",
                              style: TextStyle(
                                  fontSize: 35.0, color: Colors.black),
                            ),
                             Text(
                              "${_controller.user!.username}",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "I love a cofee ",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    )),
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
                      Icons.history_rounded,
                      color: Colors.black54,
                    ),
                    text: 'History'),
                Tab(
                    icon: Icon(
                      Icons.credit_card,
                      color: Colors.black54,
                    ),
                    text: 'Card'),
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
  }
  Widget buildPage1(String text) => Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 800.0,
              margin: new EdgeInsets.symmetric(vertical: 2.0),
              child: GridView.builder(
                  itemCount: events.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map event = events[index];
                    return EventItem(
                      event: event,
                    );
                  },
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 450,
                    childAspectRatio: 4 / 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ))),
        ),
      );

  Widget buildPage2(String text) => Center(
        child: Container(
          height: 800.0,
          margin: new EdgeInsets.symmetric(vertical: 2.0),
          child: Card(),
        ),
      );
}
