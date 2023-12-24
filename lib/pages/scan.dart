import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => ScanState();
}

class ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("scan"),
      ),
    );
  }
}
