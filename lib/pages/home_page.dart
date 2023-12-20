// import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:jeena/widgets/home_title.dart';

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
  Map<String, dynamic>? selectedCategory = categories.first;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidtht = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          homeTitle(context),
          SizedBox(
            height: deviceHeight * 0.03,
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  elevation: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search Plant",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: deviceWidtht * 0.02,
              ),
              FloatingActionButton(
                backgroundColor: Colors.black,
                splashColor: Colors.grey,
                onPressed: () {},
                child: Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.025,
          ),
          SizedBox(
            height: deviceHeight * 0.056,
            // color: Colors.red,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories
                    .map(
                      (category) => InkWell(
                        onTap: () {
                          setState(() {
                            selectedCategory = category;
                          });
                        },
                        child: Card(
                          color: category == selectedCategory
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                          child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Text(category['name'],
                                  style: TextStyle(
                                      color: category == selectedCategory
                                          ? Colors.white
                                          : Colors.green[300]))),
                        ),
                      ),
                    )
                    .toList()),
          )
        ],
      ),
    ));
  }
}
