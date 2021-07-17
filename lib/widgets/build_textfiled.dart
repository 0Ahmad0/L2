import 'package:flutter/material.dart';

class BuildTextFiled extends StatelessWidget {
  final String text;

  const BuildTextFiled({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 15.0
      ),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffA7A7A7)),
          borderRadius: BorderRadius.circular(50.0)
      ),
      child: TextFormField(
        cursorRadius: Radius.circular(100.0),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
