import 'package:figma_design/constants.dart';
import 'package:figma_design/widgets/backButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class PayementScreen extends StatefulWidget {
  const PayementScreen({ Key? key }) : super(key: key);

  @override
  _PayementScreenState createState() => _PayementScreenState();
}

class _PayementScreenState extends State<PayementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             BackButtonWidget(clr: Colors.white),
             SizedBox(height: 60,),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "You are making payment to \n\n"),
                        
                        TextSpan(text: "         Safdar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),

                      ]
                    )
                  )
                ),
              ),
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: Image(image: AssetImage("assets/images/home.png"),),
              ),
            ),
            Center(
            child:  RichText(
              text: TextSpan(
                text: "R",style: TextStyle(color: Colors.black,fontSize: 32),
                children: [
                  TextSpan(
                    text: '36532.98',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26,color: Colors.green)
                  )
                ]
              ),
            
            )
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Center(
                child: ConfirmationSlider(
                  text: '>>>',
                  iconColor: purpleclr,
                  sliderButtonContent: Center(child: Text("Pay now")),
                  
                  // height: 20,
                  foregroundColor: purpleclr,
                  onConfirmation: (){
                  Get.snackbar(
                    'Payment COnfirmation'
                    , 'Confirmed',
                    snackPosition: SnackPosition.BOTTOM,
                    duration: Duration(milliseconds: 1050),
                    icon: Icon(Icons.done,color: Colors.green,),
                    progressIndicatorBackgroundColor: Colors.green,
                    // maxWidth: 100,
                    animationDuration: Duration(milliseconds: 1050),
                    // forwardAnimationCurve: Curves.easeInOutBack,
                    // reverseAnimationCurve: Curves.easeInOutBack
                    
                    );
                    // Get.defaultDialog(
                    //   title: "confirmation",
                    //   content: Padding(
                    //     padding: EdgeInsets.all(20),
                    //     child: Center(
                    //       child: Text("Payment Successful"),
                    //     ),
                    //     )

                    // );
                    // Get.bottomSheet(
                    //   Container(
                    //     height: 100,
                    //     child: Text("succes"),
                    //   )
                    // );
                  },
                  ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}