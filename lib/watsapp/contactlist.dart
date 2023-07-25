import 'package:flutter/material.dart';
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("simple contact list"),),
      body: ListView(
        children: [
          
          const ListTile(title: Text("Mohanlal"),
          subtitle: Text("8113933229"),
          trailing: Icon(Icons.arrow_forward_ios),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Actor_Mohanlal.jpg/800px-Actor_Mohanlal.jpg"),
          ),),
           const ListTile(title: Text("Mamooty"),
          subtitle: Text("8113933529"),
          trailing: Icon(Icons.arrow_forward_ios),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://images.indianexpress.com/2021/08/Mammootty-1200.jpg?w=640"),
          ),),
           const ListTile(title: Text("Pritvi"),
          subtitle: Text("8113933229"),
          trailing: Icon(Icons.arrow_forward_ios),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://www.imdb.com/name/nm1335387/mediaviewer/rm690034177/?ref_=nm_ov_ph"),
          ),),
           const ListTile(title: Text("Mohanlal"),
          subtitle: Text("8113933229"),
          trailing: Icon(Icons.arrow_forward_ios),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Actor_Mohanlal.jpg/800px-Actor_Mohanlal.jpg"),
          ),),
           const ListTile(title: Text("Mohanlal"),
          subtitle: Text("8113933229"),
          trailing: Icon(Icons.arrow_forward_ios),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Actor_Mohanlal.jpg/800px-Actor_Mohanlal.jpg"),
          ),), const ListTile(title: Text("Mohanlal"),
          subtitle: Text("8113933229"),
          trailing: Icon(Icons.arrow_forward_ios),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Actor_Mohanlal.jpg/800px-Actor_Mohanlal.jpg"),
          ),)
        ],
      ),
    );
  }
}