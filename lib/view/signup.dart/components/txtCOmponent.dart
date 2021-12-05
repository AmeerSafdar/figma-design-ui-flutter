import 'package:flutter/material.dart';

class SignUpTxt extends StatelessWidget {
  String txt;
   SignUpTxt({
    Key? key,
    required this.txt

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(txt,style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),);
  }
}