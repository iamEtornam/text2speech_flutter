import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home';
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    final text = TextFormField(
      keyboardType: TextInputType.multiline,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Enter text here...',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final speakButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            //add action here
          },
          color: Colors.lightBlueAccent,
          child: Text('Speak to me', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            text,
            SizedBox(height: 8.0),
            speakButton,
          ],
        ),
      ),
    );
  }
}



