import 'package:flutter/material.dart';
class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
children: [
  ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/a/a9/Whatsapp_logo.jpg"),
    ),
    title: Text("My status"),
    subtitle: Text("Tap to add status update"),
  ),
  Text( "     Recent updates")
],
    );
  }
}