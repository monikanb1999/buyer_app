import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No cart item ',  style: TextStyle(
          fontSize: 18.0,
          color: Colors.black38, fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl),

    );
  }
}
