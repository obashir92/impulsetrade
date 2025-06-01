import 'package:flutter/material.dart';

class CreateSetupScreen extends StatefulWidget {
  const CreateSetupScreen({super.key});

  @override
  State<CreateSetupScreen> createState() => _CreateSetupScreenState();
}

class _CreateSetupScreenState extends State<CreateSetupScreen> {
  List<String> criteriaList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Text("Save"),
                  SizedBox(width: 5),
                  Icon(
                        Icons.check_circle_outline,
                        color: Colors.black),
                ],
              ),
            ),
          )
        ],
        backgroundColor: Colors.teal.shade200,
        title: Text("Create setup", style: TextStyle(fontSize: 20)),
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter setup name",
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.teal),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          Expanded(
            child: ListView.builder(
              itemCount: criteriaList.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Criteria ${index + 1}",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.teal),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            criteriaList.removeAt(index);
                          });
                        },
                        child: Container(
                          height: 55,
                          width: 55,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(Icons.delete, color: Colors.red.shade300),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          GestureDetector(
            onTap: () {
              if (criteriaList.length < 7){
              setState(() {
                criteriaList.add("");
              });
              }
            },
            child: SafeArea(
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade200,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Add criteria"),
                      Icon(Icons.add),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
