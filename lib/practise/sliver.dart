import 'package:flutter/material.dart';

class Slivers extends StatelessWidget {
  const Slivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      appBar: AppBar(title: Text("Appbar"),),
      body: 
       
         CustomScrollView(
          
          slivers: [
            SliverAppBar(
              title: Text("sliver "),
            )
          ],
          
        ),
        
      
      
    
    );
  }
}