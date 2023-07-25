import 'package:flutter/material.dart';
class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView(
children: [
  ListTile(
    title: Text("New Community"),
    leading: Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage("https://thumb.ac-illust.com/f6/f6e3fd6d7e60544500352e46ad300085_w.jpeg")),
        
      ],
    ),
  )
],
    ));
  }
}