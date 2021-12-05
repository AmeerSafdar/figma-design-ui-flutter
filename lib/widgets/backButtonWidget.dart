import 'package:figma_design/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtonWidget extends StatelessWidget {
  Color clr;
   BackButtonWidget({ Key? key , required this.clr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            // margin
            height: 1,
            width: 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 5,
          offset: Offset(2, 1),
                )
              ]
            ),
            margin: EdgeInsets.only(left: 12,top: 11,bottom: 5),
            child: IconButton(onPressed: (){
              Get.back();
            }, icon: Icon(Icons.arrow_back_ios,color: Kblack,)),
            );
  }
}