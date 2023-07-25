import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
     selectedItemColor: Colors.pink[100],
     unselectedItemColor: Colors.white,
     backgroundColor: Colors.black,
      items: 
    const [
      BottomNavigationBarItem(icon: SizedBox.shrink(),
      label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.search),
      label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.file_copy),
      label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined),
      label: "")
    ]);
  }
}