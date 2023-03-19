import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'gallery.dart';

class WorkPage2 extends StatefulWidget {
  const WorkPage2({Key? key}) : super(key: key);

  @override
  State<WorkPage2> createState() => _WorkPage2State();
}

class _WorkPage2State extends State<WorkPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Gallery()),
          ),
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              "Select image",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
