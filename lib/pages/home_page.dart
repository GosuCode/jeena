import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => home_pageState();
}

class home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
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
                        "2",
                        style: TextStyle(color: Colors.white),
                      ),
                      radius: 10,
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
