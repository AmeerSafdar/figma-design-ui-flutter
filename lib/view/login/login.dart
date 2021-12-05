import 'package:figma_design/constants.dart';
import 'package:figma_design/view/login/components/loginButton.dart';
import 'package:figma_design/view/login/components/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark,
      
      );
    var padding2 = Padding(
              padding: const EdgeInsets.only(left:18.0,right: 18),
              child: TextFormField(
                
                decoration: InputDecoration(
                  
                  suffixIcon: Icon(CupertinoIcons.lock),
                  hintText: '*******',
                  contentPadding: EdgeInsets.fromLTRB(5, 4, 5, 4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                
              ),
            );
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      // isBlank:true,
      child: Scaffold(
        appBar: AppBar(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),

          backgroundColor: Colors.white,
          elevation: 0,
          leading:  Container(
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
            ),
        ),
        backgroundColor: Colors.white,
        
    
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
    
            Spacer(),
            Center(child: Text("Login",style: TextStyle(color: Kblack,fontSize: 22,fontWeight: FontWeight.w700),)),
            SizedBox(height: 10,),
            Center(child: Text("Plaese Login to your Account",style: TextStyle(color: Colors.black38,fontSize: 16),),),
            SizedBox(height: 10,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:18.0,right: 18),
              child: Text("Email or Username",style: TextStyle(color: Kblack),),
            ),
            TextFiedlWidget(hint: 'Ameer Safdar', suffixIcon: Icons.person),
            
             Padding(
              padding: const EdgeInsets.only(left:18.0,right: 18,top: 30),
              child: Text("Password",style: TextStyle(color: Kblack),),
            ),
            
            TextFiedlWidget(hint: 'Password', suffixIcon: CupertinoIcons.lock_circle_fill),
            LoginButton(
              
            ),
            Spacer()
          ],
        ),
      ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  

  // ignore: non_constant_identifier_names
 
}