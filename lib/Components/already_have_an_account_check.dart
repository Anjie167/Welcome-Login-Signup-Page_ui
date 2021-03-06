import 'package:flutter/material.dart';
import 'package:simple_login/Screens/SignUp/sign_up.dart';

import '../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key, this.login = true, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( login ? "Don't have an Account ?" : "Already have an Account ?", style: TextStyle(color: kPrimaryColor),),
        GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SignUp();
              },),);
            },
            child: Text( login ? "Sign Up" : "Sign In", style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),))
      ],
    );
  }
}
