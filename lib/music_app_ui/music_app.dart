import 'package:classroom/music_app_ui/bottomnavbar.dart';
import 'package:classroom/music_app_ui/carousal_container.dart';
import 'package:classroom/music_app_ui/songs.dart';
import 'package:flutter/material.dart';
class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const BottomNav(),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Center(
              child: Text("Musify.",
              style: TextStyle(
                color: Colors.pink[100],
                fontSize: 32,
                fontWeight: FontWeight.w500
              ),),
            ),
            const SizedBox(height: 30,),
            const Carousal(),
            const SizedBox(height: 30,),
            Row(
              children: [
                const SizedBox(width: 10,),
                Text("Recommended for You",
                  style: TextStyle(
                    color: Colors.pink[100],
                    fontSize: 32,
                    fontWeight: FontWeight.w500
                  ),),
              ],
            ),
            const SizedBox(height: 10,),
            const ListViews()
      
          ],
        ),
      ),
    );
  }
}