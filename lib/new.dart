import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class FreshStore extends StatefulWidget {
  

  @override
  State<FreshStore> createState() => _FreshStoreState();
}

class _FreshStoreState extends State<FreshStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ,
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.location_on),
              Text("  Kochi"),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ],
        backgroundColor: const Color.fromRGBO(10, 194, 17, 1),
        title: const Text(
          "FARMERS FRESH ZONE",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: Color.fromRGBO(10, 194, 17, 1)),
              padding: EdgeInsets.all(11),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search for vegetables, fruits...",
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 240, 240),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 80,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 240, 240),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 80,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 240, 240),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
