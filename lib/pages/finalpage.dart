rt 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Column(
        children: [
      Container(
      color: Colors.brown.shade900,
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.doorbell,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 50),
            Text(
              'Reminder',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),


          ],
        ),
      ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/map.png'),
          ),

      ]
    ),
    );
  }
}
