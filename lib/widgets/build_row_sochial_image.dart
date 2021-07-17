import 'package:flutter/material.dart';

class BuildRowSochialImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(image: AssetImage('assets/images/facebook.png')),
        Image(image: AssetImage('assets/images/twitter.png')),
        Image(image: AssetImage('assets/images/google-plus.png')),
      ],
    );
  }
}
