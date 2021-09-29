import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class SharePrivet extends StatefulWidget {
  @override
  _SharePrivetState createState() => _SharePrivetState();
}

class _SharePrivetState extends State<SharePrivet> {

 TextEditingController _textController = TextEditingController();

  // This key will be used to show the snack bar
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  // This function is triggered when the copy icon is pressed
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: _textController.text));
    
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      key: _scaffoldKey,
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
               padding: const EdgeInsets.only(right:45.0),
              child: Text(
                'Share Privet',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                ),
              ),
            ),
          ],
        ),
      ),
      body: 
      Center(
        child: Container(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                controller: _textController,
                decoration: InputDecoration(
                icon: IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: _copyToClipboard,
                ),),),
                 
              ],),
            ),
          ),
      ),
    );
  }
}
