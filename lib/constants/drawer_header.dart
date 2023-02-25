import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({super.key});

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Color(0xff502F2F),
    width: double.infinity,
    height: 200,
    padding: EdgeInsets.only(top: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('assets/images/exercise.png'))
          ),),
          Text(
            "Username",
            style: TextStyle(
              color: Colors.white,
             fontFamily: 'inder', 
             fontSize: 20),

          ),
          Text(
            "email",
            style: TextStyle(
              color: Color.fromARGB(255, 241, 241, 68),
              fontSize: 14,
              fontFamily: "inder"
            ),
          )
      ]
      )
      ,) ;
  }
}