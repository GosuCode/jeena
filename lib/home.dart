import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text('Best Plants For\n Our Green House',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            child: CircleAvatar(
              radius: 50,
            ),
          ),
        ],
      ),

      // Text(
      //   'Best Plants For Our Green House',
      //   style: TextStyle(
      //     color: Colors.black,
      //     fontSize: 30,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
    );
  }
}
