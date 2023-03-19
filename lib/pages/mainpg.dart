import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'workpg.dart';
//GROCERY LIST

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: kToolbarHeight,
            child: Center(
              child: Text(
                'Shopping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 16.0),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkPage()),
              );
            },
            child: SizedBox(

              child: Container(

                color: Colors.black,
                height: kToolbarHeight,
                width:300,
                child: Center(
                  child: Text(
                    'Groceries',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 16.0),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkPage()),
              );
            },
            child: Container(
              color: Colors.black,
              height: kToolbarHeight,
              width: 300,
              child: Center(
                child: Text(
                  'Vegetables',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 16.0),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkPage()),
              );
            },
            child: Container(
              color: Colors.black,
              height: kToolbarHeight,
              width: 300,
              child: Center(
                child: Text(
                  'Fruits',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 16.0),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkPage()),
              );
            },
            child: Container(
              color: Colors.black,

              height: kToolbarHeight,
              width: 300,
              child: Center(
                child: Text(
                  'Stationery',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            height:60,
            width:60,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(1.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("+",
                textAlign: TextAlign.center,

                style: GoogleFonts.poppins(
                  fontSize: 40,
                  color: Colors.white,

                ),

              ),
            ),
          ),

        ],
      ),
    );
  }
}
