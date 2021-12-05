import 'package:figma_design/constants.dart';
import 'package:figma_design/view/home/homeComponents/homeButton.dart';
import 'package:figma_design/view/home/homeComponents/textSpan.dart';
import 'package:figma_design/view/login/login.dart';
import 'package:figma_design/view/signup.dart/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'homeComponents/circle_widget.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleclr,
      appBar: AppBar(
          
          elevation: 0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor:purpleclr),
      backgroundColor: purpleclr,
      
    ),
body: Center(
  child:   Column(
  
    children: [
  SizedBox(height:85),
      CirlceWidget(),
      SizedBox(height: 70,),
      Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Text("Investment opportunities from R10",textAlign:TextAlign.center ,style: TextStyle(color: Colors.white,fontSize: 26,fontFamily: 'Poppins'),),
      ),

      SizedBox(height:130),
    
      DefaultButton( btnText: 'CREATE AN ACCOUNT',btnClr:Colors.black,txtClr:Colors.white,
      press:(){Get.to(Signup(),transition: Transition.leftToRight);}),
    SizedBox(height: 30,),

      DefaultButton( btnText: 'LOGIN',btnClr:Colors.white,txtClr:Colors.black,
      press:(){press:Get.to(Login(),transition: Transition.leftToRight);}),
      SizedBox(height: 30,),
      Textspan_widget()
    ],
  
  ),
),
      );  
  }
}