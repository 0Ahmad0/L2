import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_2a/constants/const.dart';
import 'package:login_ui_2a/widgets/build_button.dart';
import 'package:login_ui_2a/widgets/build_row_sochial_image.dart';
import 'package:login_ui_2a/widgets/build_textfiled.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(1000, 500),
                    bottomRight: Radius.elliptical(1000, 500)
                ),
                gradient: LinearGradient(
                    tileMode: TileMode.clamp,
                    end: AlignmentDirectional.center,
                    begin: AlignmentDirectional.topStart,
                    colors: [
                      KColor1.withOpacity(.9),
                      KColor2,
                    ]
                )
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.width *0.1,),
                Image(
                  image: AssetImage('assets/images/logo.png'),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 8
            ),
            margin: EdgeInsets.only(
              left: 40 ,
              right: 40,
              top: 160,
              bottom: 95
            ),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(16),offset: Offset(0,3),blurRadius: 6)
                ]
            ),
            child: ListView(
              children: [
                Icon(Icons.person_add_rounded,color: Color(0xffA7A7A7),size: 30,),
                BuildTextFiled(text: 'Email'),
                BuildTextFiled(text: 'Password'),
                BuildTextFiled(text: 'Confirm Password'),
                BuildButton(text: 'SIGN UP'),
                Text('Or Sign up with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xffA7A7A7),
                      fontSize: 26,
                      fontWeight: FontWeight.w300
                  ),),
                SizedBox(height: 71,),
                BuildRowSochialImage()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 20.0
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I\'ve got an account already?',
                      style: TextStyle(
                        color: Color(0xffA7A7A7),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color(0xffF76E62),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.1),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
