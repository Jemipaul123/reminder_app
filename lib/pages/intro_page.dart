import 'dart:convert';
import 'homepage.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          //logo

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('lib/images/cart.png'),
          ),
       Padding(
            padding: const EdgeInsets.only(top:0.0),
            child: Text(
              "ShopEase",
              textAlign: TextAlign.center,
              style:GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),





            ),

          ),
          Text("Your personal shopping companion",
            style:GoogleFonts.poppins(
              fontSize: 20,
            ),
          ),
          const Spacer(),
          //get started
          GestureDetector(
            onTap: () =>Navigator.pushReplacement(context,MaterialPageRoute(
    builder: (context){
            return HomePage();
    },
    )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(0.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(.0),
                child: Text("Get Started",
    style: GoogleFonts.poppins(
      color: Colors.white,
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
