import 'package:figma_design/constants.dart';
import 'package:flutter/material.dart';

class CirlceWidget extends StatelessWidget {
  const CirlceWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Kblack,
            borderRadius: BorderRadius.circular(30)
          ),
        ),
        SizedBox(width: 8,),
        Container(

          child: Text("Circle",style: TextStyle(color: Kblack,fontSize: 32,fontWeight: FontWeight.bold),),

        ),
      ],
    );
  }
}