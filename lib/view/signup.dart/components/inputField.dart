import 'package:flutter/material.dart';

class inPutFields extends StatelessWidget {
  String hint;
   inPutFields({
    Key? key,
    required this.hint
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            decoration: InputDecoration(
    contentPadding: EdgeInsets.all(5),
    hintText: hint,
    border: OutlineInputBorder(
      // borderRadius: BorderRadius.circular(15),
      
    )
            ),

          );
  }
}
