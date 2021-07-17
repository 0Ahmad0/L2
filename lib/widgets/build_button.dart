
import 'package:flutter/material.dart';
import '../constants/const.dart';
class BuildButton extends StatelessWidget {
  final String text;

  const BuildButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(
          vertical: 33,
          horizontal: 32.5
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                KColor1,
                KColor2,
              ]
          ),
          borderRadius: BorderRadius.circular(100)
      ),
      child: FlatButton(
        onPressed: (){},
        child: Text(text,style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.1
        ),),
      ),
    );
  }
}
