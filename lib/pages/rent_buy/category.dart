import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/home/home_page.dart';
import 'package:project/pages/rent_buy/groups/action_group.dart';
import 'package:project/pages/rent_buy/groups/comedy_group.dart';
import 'package:project/pages/rent_buy/groups/drama_group.dart';
import 'package:project/pages/rent_buy/groups/fantasy_group.dart';
import 'package:project/pages/rent_buy/groups/romance_group.dart';

class CatePage extends StatefulWidget {
  const CatePage({Key? key}) : super(key: key);

  @override
  State<CatePage> createState() => _CatePageState();
}

class _CatePageState extends State<CatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage())
                );
              },
              child: Container(
                width: 40.0,
                height: 40.0,
                alignment: Alignment.center,
                child: Icon(Icons.arrow_back_ios,
                  color: Colors.greenAccent[700],
                ),
              ),
              customBorder: CircleBorder(),
            ),
            SizedBox(width: 8.0),
            Text('Back to home page',
            style: GoogleFonts.roboto(
              fontSize: 20.0,
              color: Colors.greenAccent[700],
              fontWeight: FontWeight.w800,
            ),
            ),
          ],
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('CATEGORY',
              style: GoogleFonts.roboto(
                color: Colors.greenAccent[700],
                fontSize: 50.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const GroupRomance())
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.volunteer_activism,
                          color: Colors.pinkAccent[100],
                          size: 50.0,
                        ),
                        SizedBox(width: 16.0,),
                        Text('ROMANCE',
                          style: GoogleFonts.roboto(
                              color: Colors.pinkAccent,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink[100]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const GroupFantasy())
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.auto_awesome_outlined,
                          color: Colors.purpleAccent[100],
                          size: 50.0,
                        ),
                        SizedBox(width: 16.0,),
                        Text('FANTASY',
                          style: GoogleFonts.roboto(
                              color: Colors.purpleAccent,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const GroupAction())
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.sports_kabaddi,
                          color: Colors.redAccent[100],
                          size: 50.0,
                        ),
                        SizedBox(width: 16.0,),
                        Text('ACTION',
                          style: GoogleFonts.roboto(
                              color: Colors.redAccent,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red[100]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const GroupDrama())
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.sentiment_very_dissatisfied,
                          color: Colors.blueAccent[100],
                          size: 50.0,
                        ),
                        SizedBox(width: 16.0,),
                        Text('DRAMA',
                          style: GoogleFonts.roboto(
                              color: Colors.blueAccent,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue[100]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const GroupComedy())
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.emoji_emotions_outlined,
                          color: Colors.yellow[800],
                          size: 50.0,
                        ),
                        SizedBox(width: 16.0,),
                        Text('COMEDY',
                          style: GoogleFonts.roboto(
                              color: Colors.yellow[900],
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow[100]),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
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
