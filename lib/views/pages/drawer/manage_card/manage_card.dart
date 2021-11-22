
import 'package:eventy_app/controllers/card/managecard_controller.dart';
import 'package:eventy_app/views/pages/drawer/manage_card/create_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

// ignore: must_be_immutable
class ManageCard extends StatelessWidget {
  
  final _controller = Get.put(ManageCardContoller());

  String id ;
  ManageCard(this.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        toolbarHeight: 90,
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
              padding: const EdgeInsets.only(right: 45.0),
              child: Text(
                'Manage Card',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
            ),
          ],
        ),
      ),
     
      body: Container(
        child: FutureBuilder(
          // future: getAll(),
          builder: (BuildContext context, AsyncSnapshot snapshot)
          {
            if(snapshot.data == null)
            {
              return Container(child: Center(child: Text("Loading...."),),);

            }
            else{
              return ListView.builder(itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
            height: 240.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.teal[300],
              boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
              ],
            ),
            
            child: Row(
              children: [
                    Stack(
                      children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 2,),
                                Text("  "+snapshot.data[index].name ,style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
                                SizedBox(height: 7,),
                                Text("   "+snapshot.data[index].userName,style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
                                SizedBox(height: 5,),
                                Text("   "+snapshot.data[index].workType,style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
                                SizedBox(height: 30,),
                                Text("  "+snapshot.data[index].city,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                                Text("  "+snapshot.data[index].url_work,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                                Text("  "+snapshot.data[index].tagLine,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                                Text("  "+snapshot.data[index].email,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                                Text("  "+snapshot.data[index].phoneNumber,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                             
                              ],
                            ),
                          ),
                          
                      ],
                    ),
                    
              ],
            ),
                      ),
                    ),
                       Container(child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row (
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                TextButton(onPressed: (){}, child: Text("Edit")),
                                TextButton( onPressed: (){
                                _controller.showDeleteDialog;
                              }, child: Text("Delete", style:TextStyle(color: Colors.red,)))
                              ],
                  ),
                )),
                  ],
                );
              }
              );
            }
          }
      )
      ),

                 
               
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: FloatingActionButton(
          onPressed: () {
             Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return CreateCard(this.id);
              },
            ),
          );
          },
          child: const Icon(
            Icons.add,
            size: 35,
          ),
          backgroundColor: Colors.teal[200],
        ),
      ),
    );
  }
  
}


