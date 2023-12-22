// import 'dart:html';

import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:jeena/models/product_model.dart';
import 'package:jeena/widgets/home_title.dart';
import 'package:jeena/widgets/plant_category.dart';
import 'package:jeena/widgets/search_plant.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => home_pageState();
}

class home_pageState extends State<home_page> {
  static List<Map<String, dynamic>> categories = [
    {"id": 1, "name": "All"},
    {"id": 2, "name": "Indoor"},
    {"id": 3, "name": "Outdoor"},
    {"id": 4, "name": "Aromatic"},
    {"id": 5, "name": "succulent"},
  ];

  List<ProductModel> products = [
    ProductModel(
        productName: "Hibiscus",
        productImage:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fnurserylive.com%2Fproducts%2Fhibiscus-gudhal-flower-red-plant&psig=AOvVaw0QVNF-2F8ZVhP6VbZMhEWb&ust=1703226680973000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJCp1f3zn4MDFQAAAAAdAAAAABAD",
        category: "Indoor",
        price: 44.99),
    ProductModel(
        productName: "Red Amaryllis",
        productImage:
            "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1607048273-img11o.jpg?crop=1xw:1.00xh;center,top&resize=980:*",
        category: "Indoor",
        price: 60),
    ProductModel(
        productName: "Pink Anthurium",
        productImage:
            "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1653590696-the-sill-pink-anthurium-1653590676.png?crop=1.00xw:0.771xh;0,0.0451xh&resize=980:*",
        category: "Indoor",
        price: 38),
    ProductModel(
        productName: "Orchid",
        productImage:
            "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1673638507-158057l3x-1673638490.jpg?crop=1xw:0.9128978224455612xh;center,top&resize=980:*",
        category: "Indoor",
        price: 110),
    ProductModel(
        productName: "Bromeliad",
        productImage:
            "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1673639148-e76df4c1d74d3e8593cb5a48e8bed7abe84ecf18-1200x1553.jpg?crop=1.00xw:0.774xh;0,0.0628xh&resize=980:*",
        category: "Indoor",
        price: 38),
    // ProductModel(
    //     productName: "Pink Anthurium",
    //     productImage: "",category: "Indoor",
    //     price: 44.99),
  ];

  Map<String, dynamic> selectedCategory = categories.first;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          homeTitle(context),
          SizedBox(
            height: deviceHeight * 0.03,
          ),
          searchPlant(context, deviceWidth),
          SizedBox(
            height: deviceHeight * 0.025,
          ),
          plantCategory(
              context: context,
              deviceHeight: deviceHeight,
              categories: categories,
              selectedCategory: selectedCategory,
              onClick: (Map<String, dynamic> category) {
                setState(() {
                  selectedCategory = category;
                });
              }),
          SizedBox(
            height: deviceHeight * 0.025,
          ),
          Container(
            height: deviceHeight * 0.31,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        width: deviceWidth * 0.4,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: SizedBox(
                                      height: deviceHeight * 0.16,
                                      child: Container(
                                        height: deviceHeight * 0.17,
                                        width: double.infinity,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            products[index].productImage,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                                child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: double.maxFinite,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            products[index].category,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            products[index].productName,
                                            maxLines: 1,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Price",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            '\$ ${products[index].price}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}
