import 'package:figma_design/constants.dart';
import 'package:figma_design/view/signup.dart/components/inputField.dart';
import 'package:figma_design/view/signup.dart/components/txtCOmponent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Signup extends StatelessWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        backwardsCompatibility: false,
        elevation: 0,
        bottomOpacity: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.white
          ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left:KdefaultPadding,right:KdefaultPadding ,top: KdefaultPadding+10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
              Center(
                child: 
                SignUpTxt(txt: 'Register',)),
              SizedBox(height: 10,),
              Center(child: Text("Please Enter detail to register",style: TextStyle(color: Colors.black45,fontSize: 16),)),
              SizedBox(height: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  columnText(name: "First Name",),
                  // inPutFields()
                  inPutFields(hint: 'Ameer'),
                  columnText(name: "Last Name"),
                  inPutFields(hint: 'Safdar'),
                  columnText(name: "City",),
                  // inPutFields()
                  inPutFields(hint: 'SDK'),
                  columnText(name: "Country"),
                  inPutFields(hint: 'Pakistan'),
              
                  columnText(name: "Email"),
                  inPutFields(hint: 'Ameeersafdar786@gmail.com'),
                  columnText(name: "Password",),
                  // inPutFields()
                  inPutFields(hint: '**********'),
                  columnText(name: "Confirm Password"),
                  inPutFields(hint: '**********'),
                  
                  columnText(name: "Phone Number"),
                  inPutFields(hint: '+92-3000 879284'),

                  RegistrationBtn(),
                  Container(
                    height: 30,
                  )

                ],
              )
            ],),
          ),
        ),
      ),
    );
  }
}

class RegistrationBtn extends StatelessWidget {
  const RegistrationBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            
                margin: EdgeInsets.only(right: 18,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
    minWidth: 120,
    height: 45,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
    color: purpleclr,
    onPressed: (){},
    child: Text("Register"),
                ),
              ],
            ),
          );
  }
}

class columnText extends StatelessWidget {
  String name;
   columnText({
    Key? key,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:2.0,top: 8,bottom: 5),
      child: Text(name,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),),
    );
  }
}


