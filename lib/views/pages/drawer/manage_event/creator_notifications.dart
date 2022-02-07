import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';

class CreatorNotification extends StatefulWidget {
  @override
  _CreatorNotificationState createState() => _CreatorNotificationState();
}

class _CreatorNotificationState extends State<CreatorNotification> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
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
              bottom: Radius.circular(10),
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
              child: dashBoard(),
            ),
            Container(
              child: request(),
            )
          ],
        ),
      ));
}

dashBoard() {
  return Padding(
    padding: const EdgeInsets.only(
      top: 50.0,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Column(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 70,
                ),
                Center(
                    child: Text('Male',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                Center(
                    child: Text("40%",
                        style: TextStyle(
                          fontSize: 15,
                        )))
              ],
            )),
            Container(
                child: Column(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 70,
                ),
                Center(
                    child: Text('Female',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                Center(
                    child: Text("60%",
                        style: TextStyle(
                          fontSize: 15,
                        )))
              ],
            )),
            Container(
                child: Column(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 70,
                ),
                Center(
                    child: Text('Age -20',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                Center(
                    child: Text("40%",
                        style: TextStyle(
                          fontSize: 15,
                        )))
              ],
            )),
            Container(
                child: Column(
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 70,
                ),
                Center(
                    child: Text('20-40',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                Center(
                    child: Text("60%",
                        style: TextStyle(
                          fontSize: 15,
                        )))
              ],
            )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Text('Number of Register: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Text("120",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )))
              ],
            )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Text('Number of Service Provider: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Text("16",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )))
              ],
            )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Text('Number of Activity Owner: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Text("16",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )))
              ],
            )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Text('Number of Official Sponsors: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                SizedBox(
                  width: 10,
                ),
                Center(
                    child: Text("3",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )))
              ],
            )),
          ],
        ),
      ],
    ),
  );
}

request() {
  return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Service Provider:",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 130,
              child: ListView(scrollDirection: Axis.vertical, children: [
                Stack(children: [
                  Center(
                    child: InkWell(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1582330421788-d54dc81b293a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1100&q=80",
                        ),
                        radius: 45.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check),
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(240, 78, 197, 241),
                              Color.fromARGB(240, 13, 242, 201),
                            ],
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.clear_rounded),
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(240, 255, 82, 102),
                              Color.fromARGB(240, 255, 122, 153),
                            ],
                          )),
                    ),
                  ),
                ]),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Saleh',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text('Photography'),
                  ],
                ),
              ]),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Activity Owner:",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 130,
              child: ListView(scrollDirection: Axis.vertical, children: [
                Stack(children: [
                  Center(
                    child: InkWell(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1582330421788-d54dc81b293a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1100&q=80",
                        ),
                        radius: 45.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check),
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(240, 78, 197, 241),
                              Color.fromARGB(240, 13, 242, 201),
                            ],
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.clear_rounded),
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(240, 255, 82, 102),
                              Color.fromARGB(240, 255, 122, 153),
                            ],
                          )),
                    ),
                  ),
                ]),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Saleh',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text('Photography'),
                  ],
                ),
              ]),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Official Sponsors:",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 130,
              child: ListView(scrollDirection: Axis.vertical, children: [
                Stack(children: [
                  Center(
                    child: InkWell(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1582330421788-d54dc81b293a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1100&q=80",
                        ),
                        radius: 45.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check),
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(240, 78, 197, 241),
                              Color.fromARGB(240, 13, 242, 201),
                            ],
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.clear_rounded),
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(240, 255, 82, 102),
                              Color.fromARGB(240, 255, 122, 153),
                            ],
                          )),
                    ),
                  ),
                ]),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Saleh',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text('Photography'),
                  ],
                ),
              ]),
            ),
          ]));
}
