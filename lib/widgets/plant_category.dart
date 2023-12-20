import 'package:flutter/material.dart';

Widget plantCategory(BuildContext context, category, selectedCategory) {
  return Card(
    color: category == selectedCategory
        ? Theme.of(context).primaryColor
        : Colors.white,
    child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(category['name'],
            style: TextStyle(
                color: category == selectedCategory
                    ? Colors.white
                    : Colors.green[300]))),
  );
}
