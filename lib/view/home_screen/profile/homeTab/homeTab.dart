import 'package:figma_design/constants.dart';
import 'package:figma_design/controller/cotroller.dart';
import 'package:figma_design/view/home/drawer/drawer.dart';
import 'package:figma_design/view/home_screen/profile/homeTab/componets/bottomDotWid.dart';
import 'package:figma_design/view/home_screen/profile/homeTab/componets/pricewithButton.dart';
import 'package:figma_design/view/home_screen/profile/homeTab/componets/progressBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeTab extends StatefulWidget {
  const HomeTab({ Key? key }) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  MyController cont=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [


        // DrawerWidget(),
        drawerIcon(),
        GetBuilder<MyController>(
          init: MyController(),
          builder: (controller) {
            return Container(
              color:cont.isopeDrawer.value && cont.c_ndex.value==0? Colors.transparent :Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
            );
          }
        ),
       GetBuilder<MyController>(
        init:MyController(),
        builder: (controller) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 200),
            transform: Matrix4.translationValues(controller.x.value, controller.y.value, 0)..scale(controller.z.value),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow :controller.isopeDrawer.value ? [
                  BoxShadow(
                    offset: Offset(0,0.9),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.black26
                  )
                ]:null
            ) ,
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical:18.0,horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      color: Colors.white,
                      height: 45,width: double.infinity,
                      child: DrawerWidget(),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 0),
                        child: Text("Hi, Ameer Safdar",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/user.png")),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Text("New investment",style: TextStyle(color: Colors.lightBlue,fontSize: 16),),
                    ),
          
          
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: 
                          [
                            BoxShadow(
                              offset: Offset(0,1),
                              blurRadius: 1
                              ,
                              color: Colors.black12
                              ,
                              spreadRadius: 1
                            )
                          ]
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          height: MediaQuery.of(context).size.height*0.57,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  child: Image(image: AssetImage("assets/images/home.png")),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child:Text("The Genesis",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700,fontSize: 20)
                              )),
          
                              Padding(padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                Text("EST NET YEILD 7%",style: TextStyle(color: Colors.grey,fontSize: 10),),
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 10),
                                  margin: EdgeInsets.only(left: 7,right: 10),
                                  height: 16,
                                  width: 1,
                                  color: Colors.black38,
                                ),
          
                                
                                Text("Appartments",style: TextStyle(color: Colors.grey,fontSize: 10),),
          
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 10),
                                  margin: EdgeInsets.only(left: 7,right: 10),
                                  height: 16,
                                  width: 1,
                                  color: Colors.black38,
                                ),
                                
                                Text("Hold period 2 years",style: TextStyle(color: Colors.grey,fontSize: 10),),
                                
                                
                                ],
                              ),
                              ),
                              ProgreesBarWidet(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Funded 40 %",style: TextStyle(color: Colors.black,fontSize: 14),
                              )),
          
                              Padding(
                                padding: const EdgeInsets.only(top:8.0,left: 10),
                                child: Text('Target',style: TextStyle(color: Colors.black54),),
                              ),
                              PricewithButton()                      
                            ],
                          ),
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 2,),
          
                    BottomDotWidget()
                  ],
                ),
              ),
          );
      
        }
      ),
      ]
    );
  }
}
