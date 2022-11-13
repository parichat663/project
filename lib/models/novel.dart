class Novel {
  final String name;
  final int priceBuy;
  final int priceRent;
  final String image;
  bool isBuy;
  bool isRent;

  Novel({
    required this.name,
    required this.priceBuy,
    required this.priceRent,
    required this.image,
    this.isBuy = false,
    this.isRent = false,
  });
}