import 'package:classroom/listview/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignedInPage extends StatelessWidget {
  const SignedInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Scaffold( 
      body:Center(
      child: ElevatedButton(onPressed: () {
        showDialog(context: context, builder: (context) {
          return AlertDialog(
            title: Text("Do you want to logout"),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text("No")),
              TextButton(onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage(),));
              }, child: Text("Yes"))
            ],
          );
        },);
      }, child: Icon(
        Icons.logout,
      ))
    )
    );
  }
}