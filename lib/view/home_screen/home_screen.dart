import 'package:figma_design/constants.dart';
import 'package:figma_design/controller/cotroller.dart';
import 'package:figma_design/view/home/drawer/drawer.dart';
import 'package:figma_design/view/home/workTab/workTab.dart';
import 'package:figma_design/view/home_screen/filesTab/FilesTab.dart';
import 'package:figma_design/view/home_screen/3rdTab/HandsHome.dart';
import 'package:figma_design/view/home_screen/profile/homeTab/homeTab.dart';
import 'package:figma_design/view/home_screen/profile/profileTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int cur_Index=0;
  final tabs=[
    HomeTab(),
    FIlesTab(),
    HandsHome(),
    WorkTab(),
    ProfileTab()

  ];
  MyController mc=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical:5.0,horizontal: 10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            
          color: Colors.black,
          borderRadius: BorderRadius.circular(10)
          ),
          height: MediaQuery.of(context).size.height*0.065,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomTabs(0,"assets/images/home1.png"),
              bottomTabs(1, "assets/images/tabh.png"),
              
              bottomTabs(2,"assets/images/rd.png"),
              bottomTabs(3, "assets/images/4.png"),
              
              bottomTabs(4, "assets/images/5.png"),
              
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: tabs[cur_Index],
        ),
      )
    );
  }

  GestureDetector bottomTabs(int i,String img_url) {
    bool isselect=false;
    return GestureDetector(
              onTap: (){
                setState(() {
                cur_Index=i;
                isselect=true;
              });
              },
              child: Container(
                // color: cur_Index == i ? c,
                height:55,
                width:55,
                child: Image(image: AssetImage(img_url,),color:cur_Index==i ?purpleclr:Colors.grey)
                
              ),
            );
  }
}

