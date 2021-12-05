import 'package:figma_design/constants.dart';
import 'package:flutter/material.dart';

class Textspan_widget extends StatelessWidget {
  const Textspan_widget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      margin: EdgeInsets.only(left: 25,right: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:'By creating account you agree to our\n',style: TextStyle(color: Kblack,fontSize: 16),
          children: [
            TextSpan(
              
              text: 'Terms & Conditions',style: TextStyle(color: Colors.white,fontSize: 16,decoration: TextDecoration.underline),
              children: [
                TextSpan(
                  text: ' and agree to ',style: TextStyle(color: Kblack,fontSize: 16,decoration: TextDecoration.none),
                  children: [
                    TextSpan(
                      text: 'privacy policy',style: TextStyle(color: Colors.white,fontSize: 16,decoration: TextDecoration.underline),
                    )
                  ]
                )
              ]
            )
          ]
      )
      ),
    );
  }
}