import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/rent_buy/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back6.jpg"), fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MY DEAR',
                    style: GoogleFonts.roboto(
                      color: Colors.purple[800],
                      fontSize: 50.0,
                      fontWeight: FontWeight.w600,
                      shadows: <Shadow>[
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.lightBlueAccent,
                          offset: Offset(5.0, 5.0),
                        ),
                        Shadow(
                          color: Colors.white,
                          blurRadius: 10.0,
                          offset: Offset(-10.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'NOVEL',
                    style: GoogleFonts.roboto(
                      color: Colors.deepPurpleAccent[200],
                      fontSize: 80.0,
                      fontWeight: FontWeight.w600,
                      shadows: <Shadow>[
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.lightBlueAccent,
                          offset: Offset(5.0, 5.0),
                        ),
                        Shadow(
                          color: Colors.white,
                          blurRadius: 10.0,
                          offset: Offset(-10.0, 5.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 300.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const CatePage()));
                  },
                  child: Text(
                    'START',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple[300]),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
