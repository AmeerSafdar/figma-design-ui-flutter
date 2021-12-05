

import 'package:figma_design/constants.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String btnText;
  final Color btnClr;
  final Color txtClr;
  final VoidCallback press;
  const DefaultButton({ Key? key,required this.btnText,required this.btnClr,required this.txtClr,required this.press }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      margin: EdgeInsets.only(left: 25,right: 25),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Kblack,width: 1.5),
        borderRadius: BorderRadius.circular(10),
        color: Colors.black
      ),
      child: RaisedButton(
        color: btnClr,
        
        shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          
        ),
        onPressed: press,
        
      child: Text(btnText,style: TextStyle(color: txtClr,fontSize: 16),),
      ),
    );
  }
  }
