import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_login/Components/already_have_an_account_check.dart';
import 'package:simple_login/Components/rounded_button.dart';
import 'package:simple_login/Components/rounded_input_field.dart';
import 'package:simple_login/Components/rounded_password_field.dart';
import 'package:simple_login/Screens/Login/Components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset('assets/icons/login.svg', height: size.height * 0.35,),
            SizedBox(height: size.height * 0.03,),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value){

              },
            ),
            RoundedPasswordField(
              onChanged: (value){

              },
            ),
            RoundedButton(
              text: 'LOGIN',
            press: (){},),
            SizedBox(height: size.height * 0.03,),
            AlreadyHaveAnAccountCheck()
          ],
        ),
      )
      ,
    );
  }
}





