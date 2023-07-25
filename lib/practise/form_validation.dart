import 'package:flutter/material.dart';
class FormValidation extends StatefulWidget{
  const FormValidation({super.key});
  @override
  State<FormValidation> createState()=>_FormValidationState();
}
class _FormValidationState extends State<FormValidation>{
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Center(
        child: Form(
          key: _formkey,
          child: 
        Column(
          children: [
            TextFormField(
validator: (value) {
  if(value!.isEmpty||value=="a"){
    return "Not valid";
  }
  return null;
},
            ),
          ElevatedButton(onPressed:() {
            if(_formkey.currentState!.validate()){
              print("Login");
            }
          },  child: Text("Submit"))
          ],
          
        )
        ),
      ),
    );

  }
}
