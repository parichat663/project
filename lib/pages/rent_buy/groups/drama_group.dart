import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/dialog.dart';
import 'package:project/models/novel.dart';
import 'package:project/orderCount.dart';
import 'package:project/pages/rent_buy/category.dart';
import 'package:project/pages/rent_buy/novel_list.dart';
import 'package:project/pages/rent_buy/novel_page.dart';

class GroupDrama extends StatefulWidget {
  const GroupDrama({Key? key}) : super(key: key);

  @override
  State<GroupDrama> createState() => _GroupDramaState();
}

var dramaList = [

  Novel(
    name: 'Drama 1',
    priceBuy: 280,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 2',
    priceBuy: 390,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 3',
    priceBuy: 420,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 4',
    priceBuy: 359,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 5',
    priceBuy: 215,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 6',
    priceBuy: 170,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 7',
    priceBuy: 385,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 8',
    priceBuy: 480,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 9',
    priceBuy: 349,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 10',
    priceBuy: 310,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 11',
    priceBuy: 350,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 12',
    priceBuy: 280,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 13',
    priceBuy: 430,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 14',
    priceBuy: 315,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 15',
    priceBuy: 390,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 16',
    priceBuy: 240,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 17',
    priceBuy: 385,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 18',
    priceBuy: 419,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 19',
    priceBuy: 200,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),

  Novel(
    name: 'Drama 20',
    priceBuy: 380,
    priceRent: 40,
    image: 'bookDrama.jpg',
  ),
];

class _GroupDramaState extends State<GroupDrama> {

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
      backgroundColor: Colors.blue[100],
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
                color: Colors.blueAccent[700],
                ),
              ),
              customBorder: CircleBorder(),
            ),
            SizedBox(width: 16.0),
            Icon(Icons.sentiment_very_dissatisfied,
              color: Colors.blueAccent[700],
              size: 30.0,
            ),
            SizedBox(width: 8.0,),
            Text('DRAMA NOVELS',
              style: GoogleFonts.roboto(
                color: Colors.blueAccent[700],
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueAccent[100],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int i) {
                var novel = dramaList[i];
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
                          Icon(Icons.sentiment_very_dissatisfied,
                            color: Colors.blueAccent,
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
              itemCount: dramaList.length,
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
                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
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
