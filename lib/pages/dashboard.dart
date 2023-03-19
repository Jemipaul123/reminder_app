import 'package:flutter/material.dart';
import 'package:shopping_app/pages/loginpage.dart';
import 'package:shopping_app/pages/thirdpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/pages/workpg2.dart';
import 'mainpg.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > -10) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.brown.shade300,
        body: Stack(
          children: [
            Positioned(
              top: 20,
              right: 10,
              child: Container(
                child: Image.asset(
                  'lib/images/person.png',
                  height: 90,
                  width: 90,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 200,
              left: MediaQuery.of(context).size.width / 2 - 200,
              child: Container(
                child: Image.asset(
                  'lib/images/dash.png',
                  height: 400,
                  width: 400,
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 50,
              right: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "+ New Reminder",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 50,
              right: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WorkPage2()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Scan to find",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
