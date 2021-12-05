import 'package:figma_design/constants.dart';
import 'package:figma_design/view/payment/payment_screen.dart';
import 'package:figma_design/widgets/backButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';

class FIlesTab extends StatefulWidget {
  const FIlesTab({ Key? key }) : super(key: key);

  @override
  _FIlesTabState createState() => _FIlesTabState();
}

class _FIlesTabState extends State<FIlesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(clr: Colors.black),
              SizedBox(height: 20,),
              Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      SizedBox(height:60),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Your Balance',style: TextStyle(fontSize: 16),),
                    ),
    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('R254.54',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                    ),
                    
                      SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Divider(
                        height: 2,
                        color: Colors.black38,
                        
                      )
                      ),
           
                      

                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.to(PayementScreen());
                },
                child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                  child: Row(
                            children: [
                              Container(
                                 height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: purpleclr
                                ),
                                child: Image.asset("assets/images/budget.png",fit: BoxFit.none,)
                                )
                                ,
                                Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 40),
                                  child: Text("Transaction"),
                                )
                            ],
                          ),
                ),
              ),
                      
              Padding(
                        padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                child: Row(
                          children: [
                            Container(
                               height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: purpleclr
                              ),
                              child: Image.asset("assets/images/bank.png",fit: BoxFit.none,)),
                              
                              Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 40),
                                child: Text("Find your wallet"),
                              )
                          ],
                        ),
              ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: purpleclr
                              ),
                              child: Image.asset("assets/images/money.png",fit: BoxFit.none,)),
                                    Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 40),
                                child: Text("Find your wallet"),
                              )
                          
                          

                          ],
                          
                        ),
                      )
    
            ],
          ),
        ),
    );
    
  }
}