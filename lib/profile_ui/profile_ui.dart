import 'package:flutter/material.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ui"),
      ),
      drawer:
      
       Drawer(
         child: 
         Column(
           children:[ UserAccountsDrawerHeader(accountName: Text("Leanardo Dicaprio"), accountEmail: Text("leonardodicaprio@gmail.com")
               ,
               currentAccountPicture:
               
               CircleAvatar(
            backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_FMjpg_UX1000_.jpg"),
               ),
               
               
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  CircleAvatar(
                    backgroundImage: NetworkImage("data:image/png;base64,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"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/twitter_circle-512.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-icon/linkedin_318-187585.jpg"
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://img.freepik.com/free-icon/github-cat-circle_318-41747.jpg?w=2000"),
                  )

                ],
               )
           ]
         ),
       ),
    );
  }
}