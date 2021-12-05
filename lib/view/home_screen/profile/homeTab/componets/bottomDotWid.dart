
import 'package:flutter/material.dart';
class BottomDotWidget extends StatelessWidget {
  const BottomDotWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(7),
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              
            color: Colors.black,
            borderRadius: BorderRadius.circular(10)
            ),
          ),
           Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              
            color: Colors.black,
            borderRadius: BorderRadius.circular(10)
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(bottom:5.0,left: 8),
            child: Container(
              height: 8,
              width: 8,
              child:Icon(Icons.arrow_forward_ios_rounded,size: 15,)
            ),
          ),
        ],
      ),
    );
  }
}