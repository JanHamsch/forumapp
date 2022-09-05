import 'dart:convert';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:forumapp/screens/forum_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print("Error! ${snapshot.error.toString()}");
              return Text("Error!");
            } else if (snapshot.hasData) {
              FirebaseAuth.instance.createUserWithEmailAndPassword(
                
                email: "${giveRandomEmailAndPassword()}@web.de",password: giveRandomEmailAndPassword());
              return ForumPage();
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
String giveRandomEmailAndPassword(){
String randomEmail;

var random = Random.secure();
  var values = List<int>.generate(10, (i) =>  random.nextInt(255));
  return base64UrlEncode(values);


}

