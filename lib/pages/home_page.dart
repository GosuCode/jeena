// import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
              })
        ],
      ),
    ));
  }
}
