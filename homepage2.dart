import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'thirdpage.dart';
import 'homepage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _HomePage2State();
}

class _HomePage2State extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
        onHorizontalDragUpdate: (details) {
      if (details.delta.dx < -10) { // check if swiping left
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ThirdPage(),
          ),
        );
      }
      if (details.delta.dx >-10) { // check if swiping left
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      }
    },
    child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Vertically center aligns children


          children: [

            Positioned(
              top: 50,
              left: 20,
              right: 10,
              child: Text(
                "Find what you need when you need it",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
            ),



               Container(
                alignment: Alignment.centerRight,

              child: Image.asset('lib/images/shopmart.png'),

              height: 400,
              width: 400,
          ),





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
