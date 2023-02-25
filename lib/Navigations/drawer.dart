import 'package:flutter/material.dart';
import 'drawer_header.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/screens/login_screen.dart';
// import 'package:fitness_app/constants/navigation.dart';

class Navigation_Drawer extends StatefulWidget {
  const Navigation_Drawer({super.key});

  @override
  State<Navigation_Drawer> createState() => _Navigation_DrawerState();
}

class _Navigation_DrawerState extends State<Navigation_Drawer> {
  // final CollectionReference post = FirebaseFirestore.instance.collection('Users');
   final FirebaseAuth auth = FirebaseAuth.instance;
    signOut() async {
    await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return 
      Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              MyDrawerHeader(),
              TextButton(onPressed: () {signOut();}, 
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
