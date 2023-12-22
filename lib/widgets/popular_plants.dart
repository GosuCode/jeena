import 'package:flutter/material.dart';

Widget popularPlants(double deviceHeight, double deviceWidth, products) {
  return Container(
    margin: EdgeInsets.only(left: 5),
    height: deviceHeight * 0.12,
    child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Container(
                width: deviceWidth * 0.5,
                child: Row(
                  children: [
                    SizedBox(
                      height: double.infinity,
                      child: Container(
                        width: deviceWidth * 0.2,
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
                              overflow: TextOverflow.clip,
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
                ),
              ),
            ),
          );
        }),
  );
}
