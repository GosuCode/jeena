import 'package:flutter/material.dart';

Widget searchPlant(BuildContext context, double deviceWidth) {
  return Row(
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
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: "Search Plant",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
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
        width: deviceWidth * 0.02,
      ),
      FloatingActionButton(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        splashColor: Colors.grey,
        onPressed: () {},
        child: Icon(
          Icons.filter_alt_outlined,
          color: Colors.white,
          size: 30,
        ),
      )
    ],
  );
}
