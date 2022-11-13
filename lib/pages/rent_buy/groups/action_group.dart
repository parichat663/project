import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/dialog.dart';
import 'package:project/models/novel.dart';
import 'package:project/orderCount.dart';
import 'package:project/pages/rent_buy/category.dart';
import 'package:project/pages/rent_buy/novel_list.dart';
import 'package:project/pages/rent_buy/novel_page.dart';

class GroupAction extends StatefulWidget {
  const GroupAction({Key? key}) : super(key: key);

  @override
  State<GroupAction> createState() => _GroupActionState();
}

var actionList = [

  Novel(
    name: 'Action 1',
    priceBuy: 250,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 2',
    priceBuy: 310,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 3',
    priceBuy: 350,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 4',
    priceBuy: 210,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 5',
    priceBuy: 269,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 6',
    priceBuy: 360,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 7',
    priceBuy: 180,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 8',
    priceBuy: 179,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 9',
    priceBuy: 340,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 10',
    priceBuy: 365,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 11',
    priceBuy: 325,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 12',
    priceBuy: 290,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 13',
    priceBuy: 460,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 14',
    priceBuy: 320,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 15',
    priceBuy: 250,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 16',
    priceBuy: 400,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 17',
    priceBuy: 270,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 18',
    priceBuy: 160,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 19',
    priceBuy: 380,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),

  Novel(
    name: 'Action 20',
    priceBuy: 310,
    priceRent: 40,
    image: 'bookAction.jpg',
  ),
];

class _GroupActionState extends State<GroupAction> {

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
      backgroundColor: Colors.red[100],
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
                color: Colors.redAccent[700],
                ),
              ),
              customBorder: CircleBorder(),
            ),
            SizedBox(width: 16.0),
            Icon(Icons.sports_kabaddi,
              color: Colors.redAccent[700],
              size: 30.0,
            ),
            SizedBox(width: 8.0,),
            Text('ACTION NOVELS',
              style: GoogleFonts.roboto(
                color: Colors.redAccent[700],
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.redAccent[100],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int i) {
                  var novel = actionList[i];
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
                            Icon(Icons.sports_kabaddi,
                              color: Colors.redAccent,
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
                                            color: Colors.white
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
                itemCount: actionList.length,
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
                        backgroundColor: MaterialStateProperty.all(Colors.redAccent),
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
