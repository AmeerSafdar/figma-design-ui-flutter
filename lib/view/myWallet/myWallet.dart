
import 'package:figma_design/constants.dart';
import 'package:figma_design/view/sms_verification/otp_verify.dart';
import 'package:figma_design/widgets/backButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  late File _img;

  var image;

  Future getImage(a) async{
    if(a){
    image = (await ImagePicker().pickImage(source: ImageSource.gallery)) as File;}
    else{
      image = (await ImagePicker().pickImage(source: ImageSource.camera)) as File;
    }
    setState(() {
      _img=image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleclr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: purpleclr,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: purpleclr,
        ),
        leading: BackButtonWidget(clr:purpleclr)
      ),

      floatingActionButton: FloatingActionButton(onPressed: () { 
        Get.to(Sms_verify());
       },
      child: Icon(Icons.arrow_forward_ios_rounded),),
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Spacer(),
          SizedBox(height: 30,),
          Expanded(
            child: Center(
              child: walllet_upper_text(),
            ),
          ),


          // Spacer()
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            width: MediaQuery.of(context).size.width*0.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.camera_alt_rounded,size: MediaQuery.of(context).size.height*0.06,)),
          ),

          Container(
            height: 30,width: 120,
            decoration: BoxDecoration(
              color: Color(0xff8F73FF),
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,3),
                  color:  Color(0xff8F73FF).withOpacity(0.8),
                  spreadRadius: 3,
                  blurRadius: 3
                )
              ]
            ),

          child:FlatButton(
            
            onPressed:(){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("Choose option"),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap:(){
                              
                                  getImage(false);
                            },
                            splashColor: purpleclr,
                            child: Row(
                              children: [
                                Icon(Icons.camera_alt_rounded,color: purpleclr,),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text("Camera",style: TextStyle(color: purpleclr),),
                                )
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                                onTap:(){
                                  getImage(true);
                                  },
                            splashColor: purpleclr,
                            child: Row(
                              children: [
                                Icon(Icons.camera_sharp,color: purpleclr,),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Text("Gallery",style: TextStyle(color: purpleclr),),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              });
            }, 
          child: Text("Yes, Please",style: TextStyle(color: Colors.white),)),
          ),
          Spacer(flex: 1,)

        ],
      )),
    );
  }
}

class walllet_upper_text extends StatelessWidget {
  const walllet_upper_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('''Would you like to upload
a profile picture ?''',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),);
  }
}