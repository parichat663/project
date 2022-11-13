import 'package:project/models/novel.dart';

class OrderCount{

  var price = 0;

  List<Novel> novelList = [];

  void handleBuy(Novel novel) {
      novel.isBuy = !novel.isBuy;
      if(novel.isRent){
        novel.isRent = !novel.isRent;
        price -= novel.priceRent;
        novelList.remove(novel);
      }
      if(novel.isBuy){
        price += novel.priceBuy;
        novelList.add(novel);
      }
      else{
        price -=novel.priceBuy;
        novelList.remove(novel);
      }
  }

  void handleRent(Novel novel) {
      novel.isRent = !novel.isRent;
      if(novel.isBuy){
        novel.isBuy = !novel.isBuy;
        price -= novel.priceBuy;
        novelList.remove(novel);
      }
      if(novel.isRent) {
        price += novel.priceRent;
        novelList.add(novel);
      }
      else{
        price -= novel.priceRent;
        novelList.remove(novel);
      }
  }
}