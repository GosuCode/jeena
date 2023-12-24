import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jeena/models/product_model.dart';

class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  List<ProductModel> products = [
    ProductModel(
        productName: "Hibiscus",
        productImage:
            "https://img.freepik.com/premium-photo/photo-green-plants-pot-with-dark-green-background_455711-607.jpg",
        category: "Indoor",
        isFav: true,
        price: 44.99),
    ProductModel(
        productName: "Red Amaryllis",
        productImage:
            "https://static.vecteezy.com/system/resources/previews/027/534/786/large_2x/3d-realistic-green-plant-in-pot-on-a-dark-background-generative-ai-ai-generated-free-photo.jpeg",
        category: "Indoor",
        isFav: true,
        price: 60),
    ProductModel(
        productName: "Pink Anthurium",
        productImage:
            "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1653590696-the-sill-pink-anthurium-1653590676.png?crop=1.00xw:0.771xh;0,0.0451xh&resize=980:*",
        category: "Indoor",
        isFav: false,
        price: 38),
    ProductModel(
        productName: "Orchid",
        productImage:
            "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1673638507-158057l3x-1673638490.jpg?crop=1xw:0.9128978224455612xh;center,top&resize=980:*",
        category: "Indoor",
        isFav: false,
        price: 110),
    ProductModel(
        productName: "Bromeliad",
        productImage:
            "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1673639148-e76df4c1d74d3e8593cb5a48e8bed7abe84ecf18-1200x1553.jpg?crop=1.00xw:0.774xh;0,0.0628xh&resize=980:*",
        category: "Indoor",
        isFav: true,
        price: 38),
    // ProductModel(
    //     productName: "Pink Anthurium",
    //     productImage: "",category: "Indoor",
    //     price: 44.99),
  ];
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          children: [
            Text(
              "Favorite",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              height: deviceHeight * 0.8,
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Container(
                          height: deviceHeight * 0.17,
                          width: deviceWidth * 0.99,
                          child: products[index].isFav
                              ? favData(deviceWidth, index)
                              : Text(""),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Row favData(double deviceWidth, index) {
    return Row(
      children: [
        SizedBox(
          height: double.infinity,
          child: Container(
            width: deviceWidth * 0.4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                products[index].productImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  products[index].category,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  products[index].productName,
                  maxLines: 1,
                  overflow:
                      TextOverflow.ellipsis, //shows ... if not text doesn't fit
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${products[index].price}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
