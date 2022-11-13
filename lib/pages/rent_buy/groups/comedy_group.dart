import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/dialog.dart';
import 'package:project/models/novel.dart';
import 'package:project/orderCount.dart';
import 'package:project/pages/rent_buy/category.dart';
import 'package:project/pages/rent_buy/novel_list.dart';
import 'package:project/pages/rent_buy/novel_page.dart';

class GroupComedy extends StatefulWidget {
  const GroupComedy({Key? key}) : super(key: key);

  @override
  State<GroupComedy> createState() => _GroupComedyState();
}

var comedyList = [

  Novel(
    name: 'Comedy 1',
    priceBuy: 300,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 2',
    priceBuy: 350,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 3',
    priceBuy: 270,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 4',
    priceBuy: 380,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 5',
    priceBuy: 210,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 6',
    priceBuy: 410,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 7',
    priceBuy: 260,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 8',
    priceBuy: 320,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 9',
    priceBuy: 280,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 10',
    priceBuy: 199,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 11',
    priceBuy: 450,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 12',
    priceBuy: 380,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 13',
    priceBuy: 360,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 14',
    priceBuy: 249,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 15',
    priceBuy: 359,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 16',
    priceBuy: 240,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 17',
    priceBuy: 395,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 18',
    priceBuy: 410,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 19',
    priceBuy: 370,
    priceRent: 40,
    image: 'bookComedy.png',
  ),

  Novel(
    name: 'Comedy 20',
    priceBuy: 389,
    priceRent: 40,
    image: 'bookComedy.png',
  ),
];

class _GroupComedyState extends State<GroupComedy> {

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
      backgroundColor: Colors.yellow[100],
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
                color: Colors.yellow[900],
                ),
              ),
              customBorder: CircleBorder(),
            ),
            SizedBox(width: 16.0),
            Icon(Icons.emoji_emotions_outlined,
              color: Colors.yellow[900],
              size: 30.0,
            ),
            SizedBox(width: 8.0,),
            Text('COMEDY NOVELS',
              style: GoogleFonts.roboto(
                color: Colors.yellow[900],
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.yellowAccent[100],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int i) {
                  var novel = comedyList[i];
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
                            Icon(Icons.emoji_emotions_outlined,
                              color: Colors.yellow[800],
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
                itemCount: comedyList.length,
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
                        backgroundColor: MaterialStateProperty.all(Colors.yellow[800]),
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
  /*void _handleClickButton(BuildContext context, int index){
    var novel = romanceList![index];
    setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => NovelList(novel: novel))
        );
    });
  }*/
}
