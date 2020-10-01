import 'package:chatapp/ChatPage.dart';
import 'package:flutter/material.dart';

class NameEntry extends StatefulWidget {
  @override
  _NameEntryState createState() => _NameEntryState();
}

class _NameEntryState extends State<NameEntry> {
  final TextEditingController valuecontroller = TextEditingController();
  String userName ;
  void getnewpage(String name){
    userName = name;
    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage(uname:userName)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Chat Room"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Center(
              child: TextField(
                controller: valuecontroller,
                decoration: InputDecoration(
                  hintText: "Enter name"
                ),
              ),
            ),
            RaisedButton(child: Text("Enter in Room"),
            onPressed: (){
              if(valuecontroller.text.isNotEmpty){
              getnewpage(valuecontroller.text);
              }
            })
          ],
        ),
      ),
    );
  }
}