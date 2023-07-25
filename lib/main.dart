import 'package:classroom/music_app_ui/music_app.dart';
import 'package:classroom/practise/sliver.dart';
import 'package:classroom/profile_ui/profile_ui.dart';
import 'package:classroom/watsapp/contactlist.dart';
import 'package:classroom/practise/form_validation.dart';
import 'package:classroom/sign_up_page/sign_up_page.dart';
import 'package:classroom/watsapp/watsapp_ui.dart';
import 'package:flutter/material.dart';

import 'listview/class_listview.dart';
import 'new.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home :ProfileUi()

//:MusicApp()
    );
  }
}