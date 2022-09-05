import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:forumapp/classes/user.dart';

Widget CustomText(String userText) {

UserNameText User = UserNameText(FirebaseAuth.instance.currentUser!.email.toString(),userText,DateTime.now().toString());
  
  
  return Container(
      height: 50,
      width: 400,
      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(User.name),
              Expanded(child: Container()),
              Text(User.currentTime),
            ],
          ),
          Text(User.userText)
        ],
      ));
}
