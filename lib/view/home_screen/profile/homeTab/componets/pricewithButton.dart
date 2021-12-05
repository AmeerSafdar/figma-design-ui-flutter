import 'package:figma_design/constants.dart';
import 'package:flutter/material.dart';
class PricewithButton extends StatelessWidget {
  const PricewithButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("R36,986",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            Container(
              // height: ,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(bottom:8.0),
                child: MaterialButton(
                  onPressed: (){},
                  color: purpleclr,
                child: Text("Invest",style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
