import 'package:figma_design/constants.dart';
import 'package:figma_design/view/home/homeComponents/circle_widget.dart';
import 'package:figma_design/view/home_screen/home_screen.dart';
import 'package:figma_design/view/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Security extends StatefulWidget {
  const Security({ Key? key }) : super(key: key);

  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               circleTxt(),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 15),
                child: Container(
                  child: Text("""Welcome back, 
Safdar.""",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26),),
                ),
              ),

              GestureDetector(
                onTap: (){
                  print("finger Tapped");
                },
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("assets/images/finger.png"),),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                padding:EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  onPressed: (){
                    
                  Get.offAll(Login(),transition: Transition.fadeIn);
                  },
                  color: purpleclr,
                  minWidth: double.infinity,
                child: Text("Login with touc iD"),
                ),
              ),

              FlatButton(
                minWidth: double.infinity,
                onPressed: (){
                  Get.offAll(HomeScreen(),transition: Transition.upToDown);
                }, 
              child: Text("Or go to Login Home->")),
              Spacer(),
              Center(
                child:Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Our ",style: TextStyle(color: Colors.black54,fontSize: 18)
                      ),
                      TextSpan(
                        text: "T&CS",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                      )
                    ]
                  )
                )
                  
                  
                  ),
              
                Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Row circleTxt() {
    return Row(
    // mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Kblack,
          borderRadius: BorderRadius.circular(30)
        ),
      ),
      SizedBox(width: 8,),
      Container(

        child: Text("Circle",style: TextStyle(color: Kblack,fontSize: 32,fontWeight: FontWeight.bold),),

      ),
    ],
  );
  }
}