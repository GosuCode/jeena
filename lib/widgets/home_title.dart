import 'package:flutter/material.dart';

Widget homeTitle(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Best Plants For \nOur Green House",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      // Spacer(), // can be used instead of mainaxisalignment
      Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/104659592?v=4"),
          ),
          Positioned(
            right: 0,
            child: CircleAvatar(
              child: Text(
                "69",
                style: TextStyle(color: Colors.white),
              ),
              radius: 10,
              backgroundColor: Theme.of(context).primaryColor,
            ),
          )
        ],
      )
    ],
  );
}
