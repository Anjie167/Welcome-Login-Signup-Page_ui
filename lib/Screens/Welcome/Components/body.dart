import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_login/Components/rounded_button.dart';
import 'package:simple_login/Screens/Login/login_screen.dart';
import 'package:simple_login/Screens/SignUp/sign_up.dart';
import 'package:simple_login/constants.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size gives total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME TO EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginScreen();
                }));
              },
            ),
            RoundedButton(
              textColor: Colors.black,
              color: kPrimaryLightColor,
              text: 'REGISTER',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUp();
                },),);

              },
            ),
          ],
        ),
      ),
    );
  }
}
