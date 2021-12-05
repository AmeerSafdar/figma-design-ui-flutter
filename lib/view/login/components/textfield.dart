import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFiedlWidget extends StatelessWidget {
  final String hint;  IconData suffixIcon;
   TextFiedlWidget({ Key? key ,required this.hint,required this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18),
            child: TextFormField(
              decoration: InputDecoration(
                
                suffixIcon:Icon(suffixIcon,),
                hintText: hint,
                contentPadding: EdgeInsets.fromLTRB(5, 4, 5, 4),
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8)
                )
              ),
            ),
          );
  }
}