class ProductModel {
  String productName;
  String productImage;
  String category;
  double price;
  bool isFav;

  ProductModel(
      {required this.productName,
      required this.productImage,
      required this.category,
      required this.price,
      required this.isFav});
}
