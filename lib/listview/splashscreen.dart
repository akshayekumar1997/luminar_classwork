import 'package:flutter/material.dart';

import 'homepage.dart';
class SplashScreen extends StatefulWidget{
  @override
 State<SplashScreen> createState()=> _SplashScreenState();
  
}
class _SplashScreenState extends State<SplashScreen>{
   initState(){
      super.initState();
      showSplashScreen();
    }
  @override
  Widget build(BuildContext context){
   
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/e/eb/Arghon_Inc._Splash_Screen.png"),fit: BoxFit.cover)
        ),
      ),

    );
  }
  Future<void>showSplashScreen()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomePage(),), (route) => false);
  }
}