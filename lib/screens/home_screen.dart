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
        backgroundColor: Colors.grey.shade200,
        title: Text("My setups"),
        actions: [
          Row(
            children: [
              Text("Add new setup"),
              IconButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/createsetup');
                  },
                  icon: Icon(Icons.post_add_outlined)),
            ],
          )
        ],
      ),

      body: Column(
        children: [],
      ),
    );
  }
}