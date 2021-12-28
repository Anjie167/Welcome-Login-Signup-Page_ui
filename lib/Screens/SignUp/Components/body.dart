import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_login/Components/already_have_an_account_check.dart';
import 'package:simple_login/Components/rounded_button.dart';
import 'package:simple_login/Components/rounded_input_field.dart';
import 'package:simple_login/Components/rounded_password_field.dart';
import 'package:simple_login/Screens/Login/login_screen.dart';
import 'package:simple_login/Screens/SignUp/Components/background.dart';
import 'package:simple_login/Screens/SignUp/Components/social_icon.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SIGNUP', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: size.height *0.03,),
            SvgPicture.asset('assets/icons/signup.svg', height: size.height * 0.35,),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value){},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: (){},
            ),
            SizedBox(height: size.height *0.03,),
            AlreadyHaveAnAccountCheck(
              login: false,
            press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginScreen();
                },),);
            },),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: (){},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: (){},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: (){},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


