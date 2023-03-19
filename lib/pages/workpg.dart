import 'package:flutter/material.dart';
import 'mainpg.dart';
//EaCH LIST

class WorkPage extends StatefulWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade300,
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(

          decoration: InputDecoration(
            hintText: 'Search for items',
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
  ],
        ),
    );
  }
}
