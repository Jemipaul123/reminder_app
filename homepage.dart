import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx < -10) { // check if swiping left
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SecondPage(),
            ),
          );
        }
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 450,
              width:350,
              child: Image.asset('lib/images/chat2.png'),
            ),
            Text(
              "Get notified and never miss a deal",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            Spacer(),
            Container(
              child: Image.asset('lib/images/dots1.png'),
              height: 21,
              width: 140,
            ),

          ],
        ),
      ),
    );
  }
}

