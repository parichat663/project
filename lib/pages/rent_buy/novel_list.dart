import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/models/novel.dart';

class NovelList extends StatelessWidget {

  NovelList({Key? key, required this.novelList, required this.Order}) : super(key: key);

  List<Novel>? novelList;
  var Order;
  
  @override
  Widget build(BuildContext context) {
    var orderCount = 0;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('NOVEL LIST',
              style: GoogleFonts.roboto(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.tealAccent[700],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/backgroundbooks.webp"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int i){
                  var novel = novelList![i];
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: novel.isBuy
                            ? Row(
                          children: [
                              Image.asset(
                                'assets/images/${novel.image}',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        novel.name,
                                        style: const TextStyle(fontSize: 20.0),
                                      ),
                                    ],
                                  ),
                                ),
                                Text('BUY ${novel.priceBuy}'),
                          ],
                        )
                            : novel.isRent
                            ? Row(
                          children: [
                              Image.asset(
                                'assets/images/${novel.image}',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            const SizedBox(width: 16.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    novel.name,
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                  SizedBox(height: 6.0,),
                                  Text('Rent for 3 days only',
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Text('RENT ${novel.priceRent}'),
                          ],
                        ) : null
                        ),
                      ),
                    );
                  },
                itemCount: novelList!.length,
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Price',
                                style: GoogleFonts.roboto(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text('${Order} THB',
                                style: GoogleFonts.roboto(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                              ),
                              ),
                            ],
                          ),
                        ),
                      height: 60.0,
                      color: Colors.tealAccent,
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
