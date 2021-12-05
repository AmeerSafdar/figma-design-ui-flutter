// import 'package:figma_design/view/tutorial/tutorial.dart';
import 'package:figma_design/constants.dart';
import 'package:figma_design/view/security/security.dart';
import 'package:figma_design/widgets/backButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
class Sms_verify extends StatefulWidget {
  const Sms_verify({ Key? key }) : super(key: key);

  @override
  _Sms_verifyState createState() => _Sms_verifyState();
}

class _Sms_verifyState extends State<Sms_verify> {
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButtonWidget(clr: Colors.white,),
        elevation: 0,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white
          ,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: Colors.white,
      ),
      

      body: Column(
        children: [
          Spacer(flex: 2,),
          Container(
            child: Text("Enter verification code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text('''Enter the one-time code sent to
      +92 3000 - 879284''',textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal :35.0,vertical: 20),
            child: Container(
              child: PinFieldAutoFill(
                codeLength: 4,
                onCodeChanged: (val){
                  print(val);
                },
              ),
            ),
          ),
          Container(
            child: Text("Having trouble ?  Resend code "),
          ),
            Spacer(),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: (){
                Get.to(Security());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text("Done",style: TextStyle(color: Colors.white),),
              color: purpleclr,
            ),
          ),
          Spacer(flex: 2,)
        ],
      ),
    );
  }
}