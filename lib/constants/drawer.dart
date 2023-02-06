import 'package:flutter/material.dart';
import 'drawer_header.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:fitness_app/constants/navigation.dart';

class Navigation_Drawer extends StatelessWidget {
  const Navigation_Drawer({super.key});

  // final CollectionReference post = FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return 
      Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              MyDrawerHeader(),
              TextButton(onPressed: () {}, 
              child: Row(children: [
                Text("Logout", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, fontFamily: "Inder"),),
                Icon(Icons.logout_rounded,
                size: 30,),
              ],)),
            ]),
          ),
        ),
        
      );
      
    
    // 
  }
}
