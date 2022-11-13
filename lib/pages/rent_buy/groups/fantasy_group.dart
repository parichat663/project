import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/dialog.dart';
import 'package:project/models/novel.dart';
import 'package:project/orderCount.dart';
import 'package:project/pages/rent_buy/category.dart';
import 'package:project/pages/rent_buy/novel_list.dart';
import 'package:project/pages/rent_buy/novel_page.dart';

class GroupFantasy extends StatefulWidget {

  const GroupFantasy({Key? key}) : super(key: key);

  @override
  State<GroupFantasy> createState() => _GroupFantasyState();
}

var fantasyList = [

  Novel(
    name: 'Fantasy 1',
    priceBuy: 450,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 2',
    priceBuy: 280,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 3',
    priceBuy: 310,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 4',
    priceBuy: 249,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 5',
    priceBuy: 190,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 6',
    priceBuy: 440,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 7',
    priceBuy: 290,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 8',
    priceBuy: 384,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 9',
    priceBuy: 430,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 10',
    priceBuy: 259,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 11',
    priceBuy: 360,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 12',
    priceBuy: 210,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 13',
    priceBuy: 390,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 14',
    priceBuy: 249,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 15',
    priceBuy: 250,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 16',
    priceBuy: 350,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 17',
    priceBuy: 300,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 18',
    priceBuy: 400,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 19',
    priceBuy: 410,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),

  Novel(
    name: 'Fantasy 20',
    priceBuy: 220,
    priceRent: 40,
    image: 'bookFantasy.webp',
  ),
];

class _GroupFantasyState extends State<GroupFantasy> {

  var order = OrderCount();

  void _handleBuy(Novel novel) {
    setState(() {
      order.handleBuy(novel);
    });
  }

  void _handleRent(Novel novel) {
    setState(() {
      order.handleRent(novel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const CatePage())
                );
              },
              child: Container(
                width: 40.0,
                height: 40.0,
                alignment: Alignment.center,
                child: Icon(Icons.arrow_back_ios,
                color: Colors.purpleAccent[700],
                ),
              ),
              customBorder: CircleBorder(),
            ),
            SizedBox(width: 16.0),
            Icon(Icons.auto_awesome_outlined,
              color: Colors.purpleAccent[700],
              size: 30.0,
            ),
            SizedBox(width: 8.0,),
            Text('FANTASY NOVELS',
              style: GoogleFonts.roboto(
                color: Colors.purpleAccent[700],
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.purpleAccent[100],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int i) {
                var novel = fantasyList[i];
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NovelPage(novel: novel)),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.auto_awesome_outlined,
                            color: Colors.purpleAccent,
                            size: 30.0,
                          ),
                          const SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  novel.name,
                                  style: const TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  child: ElevatedButton(
                                    onPressed: (){
                                      _handleBuy(novel);
                                      showMyDialog(context, 'SUCCESS!', order.price);
                                    },
                                    child: Text('BUY ${novel.priceBuy} THB',
                                      style: novel.isBuy
                                          ? GoogleFonts.roboto(
                                        color: Colors.grey[900],
                                        decoration: TextDecoration.lineThrough,
                                      )
                                          : GoogleFonts.roboto(
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: novel.isBuy
                                        ? ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(6.0)),
                                    )
                                        : ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(6.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  child: ElevatedButton(
                                    onPressed: (){
                                      _handleRent(novel);
                                      showMyDialog(context, 'SUCCESS!', order.price);
                                    },
                                    child: Text('RENT ${novel.priceRent} THB',
                                      style: novel.isRent
                                          ? GoogleFonts.roboto(
                                        color: Colors.grey[900],
                                        decoration: TextDecoration.lineThrough,
                                      )
                                          : GoogleFonts.roboto(
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: novel.isRent
                                        ? ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(6.0)),
                                    )
                                        : ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(6.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: fantasyList.length,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NovelList(novelList: order.novelList!, Order: order.price,))
                        );
                      },
                      child: Icon(Icons.shopping_cart,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
                        padding: MaterialStateProperty.all(EdgeInsets.all(6.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
