import 'package:flutter/material.dart';
class WatsappCall extends StatelessWidget {
  const WatsappCall({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage("https://thumbs.dreamstime.com/z/illustration-plus-circle-green-icon-concept-plus-circle-green-icon-concept-118691625.jpg"),),
        title: Text("Create call link"),
        subtitle: Text("Share a link for yoour WhatsApp call"),
        )
      ],
    );
  }
}