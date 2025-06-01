import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        title: Text("My setups", style: TextStyle(fontSize: 20),),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/createsetup');
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Text("Add setup"),
                  SizedBox(width: 5),
                  Icon(
                        Icons.post_add_outlined,
                        color: Colors.black,)
                ],
              ),
            ),
          )
        ],
      ),

      body: Column(
        children: [],
      ),
    );
  }
}