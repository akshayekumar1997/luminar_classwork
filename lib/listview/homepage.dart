import 'package:classroom/listview/signedinpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Center(
child: Form(
  key:_formkey,
  child: 
Expanded(child: 
Container(
  alignment: Alignment.center,
  child:
Column(
  children: [
SizedBox(height: 35,),
    TextFormField(
      validator: (value) {
        if(value!.isEmpty){
          return "Enter value";
        }
        else if(!value.contains("@")&& !value.contains(".")){
          return "Enter a valid email";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter email",
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)))
      ),
    ),
    SizedBox(height: 20,),
    
    TextFormField(
      validator: (value) {
        if(value!.isEmpty){
          return "Enter a password";
        }
      },
      decoration: InputDecoration(
        hintText: "Enter password",
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)))
      ),
    ),
    SizedBox(height: 35,),
    ElevatedButton(onPressed: 
    () {
      if(_formkey.currentState!.validate()){
Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignedInPage(),));
      }
    }, child: Text("Log In"))
  ],
)
),

      ),
      )
      )
    );
  }
}