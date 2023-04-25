import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home';
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final flutterTts = FlutterTts();

  final myController = TextEditingController();
  String languageAvailableText = '';
  List<String> languages = [];
  Random rng = new Random();
  @override
  initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.

    languages = await flutterTts.getLanguages;
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted)
      return;
  }

  @override
  Widget build(BuildContext context){
    final text = TextField(
      controller: myController,
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
           flutterTts.speak(myController.text);
          },
          color: Colors.blue,
          child: Text('Talk', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        title: new Text('Text2Speech'),
      ),
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



