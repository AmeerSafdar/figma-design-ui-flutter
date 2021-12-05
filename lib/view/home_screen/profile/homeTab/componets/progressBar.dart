import 'package:flutter/material.dart';


class ProgreesBarWidet extends StatelessWidget {
  const ProgreesBarWidet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40)
          ),
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.black, 
              value: 0.4,
              // value: 1,
              // valueColor:AlwaysStoppedAnimation<Color>(Colors.red) ,
               valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),  
            ),
          ),
        ),
        
    );
  }
}