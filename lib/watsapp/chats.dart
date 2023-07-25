import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(child: 
      ListView(
children: [
  SizedBox(
    height: 20,
  ),
  ListTile(
    leading: CircleAvatar(
      maxRadius: 25,
       backgroundImage: NetworkImage("https://images.indianexpress.com/2021/08/Mammootty-1200.jpg?w=640"
       ),
    ),
    title: Text("Mamooty",style: TextStyle(
      fontWeight: FontWeight.w500
    ),),
    subtitle: Text("~ Mohanlal : Ikka ippo cinema onnum ille"),
trailing: Column(
  children: [
    Text("4 : 18 pm"),
    SizedBox(height: 4,),
    Container(
  width: 20,
  height: 20,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.green,
  ),
  child: CircleAvatar(
    backgroundColor: Colors.transparent,
    child: Text(
      '3',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
)

  ],
),
  ),
  ListTile(
    leading: CircleAvatar(
      maxRadius: 25,
       backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Actor_Mohanlal.jpg/800px-Actor_Mohanlal.jpg"
       ),
    ),
    title: Text("MohanLal",style: TextStyle(
      fontWeight: FontWeight.w500
    ),),
    subtitle: Text("~ Mamooty : Very busy . pulikottai valiban shoot kazhinjo ?"),
trailing: Column(
  children: [
    Text("5 : 19 pm"),
    SizedBox(height: 4,),
    Container(
  width: 20,
  height: 20,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.green,
  ),
  child: CircleAvatar(
    backgroundColor: Colors.transparent,
    child: Text(
      '1',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
)

  ],
),
  ),
  ListTile(
    leading: CircleAvatar(
      maxRadius: 25,
       backgroundImage: NetworkImage("https://qph.cf2.quoracdn.net/main-qimg-7df7dba59b7b8ada562d537ebe51aab0-pjlq"
       ),
    ),
    title: Text("Pritviraj",style: TextStyle(
      fontWeight: FontWeight.w500
    ),),
    subtitle: Text("~ Indrajith : Hi ."),
trailing: Column(
  children: [
    Text("6 : 29 pm"),
    SizedBox(height: 4,),
    Container(
  width: 20,
  height: 20,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.green,
  ),
  child: CircleAvatar(
    backgroundColor: Colors.transparent,
    child: Text(
      '2',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
)

  ],
),
  )
],
      
      ),
       );
       
  }
}