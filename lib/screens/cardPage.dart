
import 'package:flutter/material.dart';



class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
         backgroundColor: Colors.teal[100],
         shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.vertical(
         bottom: Radius.circular(30),
        ),
        ),
        elevation: 10,
        toolbarHeight: 90,
        title: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              'Cards  ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),
            ),
            Icon(
              Icons.credit_card_rounded,
              color: Color.fromARGB(240,74, 189, 159),
              size: 35,
            ),
          ],
        ),
      ), 
      body: Container(


      ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: FloatingActionButton(
                
        onPressed: () {
           
            
          },
        child: const Icon(Icons.qr_code,size: 35,),
        backgroundColor: Colors.teal[200],
      ),
            ),

    );
  }
}
