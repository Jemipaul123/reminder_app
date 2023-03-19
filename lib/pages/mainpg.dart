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
        color: Colors.brown.shade900,
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_grocery_store,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Shopping',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
    decoration: BoxDecoration(
    color: Colors.brown.shade500,
    borderRadius: BorderRadius.circular(20.0),
    ),
    height: kToolbarHeight,
    width:250,
    child: Center(
    child: Text(
    'Groceries',
    style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,

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
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.brown.shade500,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: kToolbarHeight,
                width:250,
                child: Center(
                  child: Text(
                    'Vegetables',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,

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
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.brown.shade500,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: kToolbarHeight,
                width:250,
                child: Center(
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,

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
            child: SizedBox(
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.brown.shade500,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: kToolbarHeight,
                width:250,
                child: Center(
                  child: Text(
                    'Stationery',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,

                    ),
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
                color: Colors.brown.shade900,
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

