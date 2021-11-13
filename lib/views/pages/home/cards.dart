import 'package:eventy_app/util/over_viewdata_card.dart';
import 'package:eventy_app/views/pages/home/card_item.dart';
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
              color: Color.fromARGB(240, 74, 189, 159),
              size: 35,
            ),
          ],
        ),
      ),
      body:Stack(
        children:[
        Container(
              constraints: BoxConstraints.tightFor(width: 500),
              //width text field
              margin: EdgeInsets.all(30),
              child: Material(
                // shadow
                elevation: 5, //shadow
                shadowColor: Colors.black, //color shadow
                borderRadius: BorderRadius.circular(32.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    //size Text field
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    labelText: "Search for the card",
                    labelStyle: TextStyle(fontSize: 20),
                    suffixIcon: Icon(Icons.credit_card_outlined),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),  
        Padding(
          padding: const EdgeInsets.only(top:80.0),
          child: ListView(
            padding: EdgeInsets.only(left: 20.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20.0),
              ),
             SizedBox(height: 10.0),
              cardList(),
              SizedBox(height: 10.0),
            ],
          ),
        ),
        ] 
      ),
        
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.qr_code,
            size: 35,
          ),
          backgroundColor: Colors.teal[200],
        ),
      ),

    );
  }
}

cardList() {
  return Container(
      height: 620.0,
      margin: new EdgeInsets.symmetric(vertical: 2.0),
      child: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int index) {
          Map card = cards[index];
          return CardItem(
            card: card,
          );
        },
      ));
}
