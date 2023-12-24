import 'package:flutter/material.dart';

Widget plantCategory(
    {required BuildContext context,
    required double deviceHeight,
    required List<Map<String, dynamic>> categories,
    required Map<String, dynamic> selectedCategory,
    required Function onClick}) {
  return SizedBox(
    height: deviceHeight * 0.056,
    // color: Colors.red,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map(
              (category) => InkWell(
                  onTap: () {
                    onClick(category);
                    // setState(() {
                    //   selectedCategory = category;
                    // });
                  },
                  child: Card(
                    color: category == selectedCategory
                        ? Theme.of(context).primaryColor
                        : Colors.white,
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(category['name'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: category == selectedCategory
                                    ? Colors.white
                                    : Theme.of(context).primaryColor,
                                fontSize: 15))),
                  )),
            )
            .toList()),
  );
}
