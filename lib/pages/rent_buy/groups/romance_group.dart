import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/dialog.dart';
import 'package:project/models/novel.dart';
import 'package:project/orderCount.dart';
import 'package:project/pages/rent_buy/category.dart';
import 'package:project/pages/rent_buy/novel_list.dart';
import 'package:project/pages/rent_buy/novel_page.dart';

var romanceList = [
  Novel(
    name: 'Romance 1',
    priceBuy: 300,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 2',
    priceBuy: 210,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 3',
    priceBuy: 259,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 4',
    priceBuy: 420,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 5',
    priceBuy: 180,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 6',
    priceBuy: 350,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 7',
    priceBuy: 389,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 8',
    priceBuy: 140,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 9',
    priceBuy: 269,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 10',
    priceBuy: 159,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 11',
    priceBuy: 390,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 12',
    priceBuy: 450,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 13',
    priceBuy: 310,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 14',
    priceBuy: 289,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 15',
    priceBuy: 370,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 16',
    priceBuy: 420,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 17',
    priceBuy: 360,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 18',
    priceBuy: 200,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 19',
    priceBuy: 460,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
  Novel(
    name: 'Romance 20',
    priceBuy: 340,
    priceRent: 40,
    image: 'bookLove.jpg',
  ),
];

class GroupRomance extends StatefulWidget {
  const GroupRomance({Key? key}) : super(key: key);

  @override
  State<GroupRomance> createState() => _GroupRomanceState();
}

class _GroupRomanceState extends State<GroupRomance> {
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
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const CatePage()));
              },
              child: Container(
                width: 40.0,
                height: 40.0,
                alignment: Alignment.center,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.pinkAccent[700],
                ),
              ),
              customBorder: CircleBorder(),
            ),
            SizedBox(width: 16.0),
            Icon(
              Icons.volunteer_activism,
              color: Colors.pinkAccent[700],
              size: 30.0,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'ROMANCE NOVELS',
              style: GoogleFonts.roboto(
                color: Colors.pinkAccent[700],
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.pinkAccent[100],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int i) {
                var novel = romanceList[i];
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NovelPage(novel: novel)
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.volunteer_activism,
                            color: Colors.pinkAccent,
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
                                    onPressed: () {
                                      _handleBuy(novel);
                                      showMyDialog(context, 'SUCCESS!', order.price);
                                    },
                                    child: Text(
                                      'BUY ${novel.priceBuy} THB',
                                      style: novel.isBuy
                                          ? GoogleFonts.roboto(
                                              color: Colors.grey[900],
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            )
                                          : GoogleFonts.roboto(
                                              color: Colors.white,
                                            ),
                                    ),
                                    style: novel.isBuy
                                        ? ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.grey),
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.all(6.0)),
                                          )
                                        : ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.redAccent),
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.all(6.0)),
                                          ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _handleRent(novel);
                                      showMyDialog(context, 'SUCCESS!', order.price);
                                      //_addList(novel);
                                    },
                                    child: Text(
                                      'RENT ${novel.priceRent} THB',
                                      style: novel.isRent
                                          ? GoogleFonts.roboto(
                                              color: Colors.grey[900],
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            )
                                          : GoogleFonts.roboto(
                                              color: Colors.white,
                                            ),
                                    ),
                                    style: novel.isRent
                                        ? ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.grey),
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.all(6.0)),
                                          )
                                        : ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.greenAccent),
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.all(6.0)),
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
              itemCount: romanceList.length,
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
                        backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
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
