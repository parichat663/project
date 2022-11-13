import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/dialog.dart';
import 'package:project/models/novel.dart';
import 'package:project/orderCount.dart';

class NovelPage extends StatelessWidget {
  final Novel novel;

  NovelPage({Key? key, required this.novel}) : super(key: key);

  var order = OrderCount();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        title: Text(novel.name,
          style: GoogleFonts.roboto(
          fontSize: 20.0,
            fontWeight: FontWeight.w400,
        ),
        ),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/${novel.image}',
              width: 200.0,
              //height: 200.0,
              //fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0,),
            Text(novel.name,
              style: GoogleFonts.roboto(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 8.0,),
            Text('Buy Price : ${novel.priceBuy} THB',
              style: GoogleFonts.roboto(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text('Rent Price : ${novel.priceRent} THB',
              style: GoogleFonts.roboto(
                fontSize: 15.0,fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



