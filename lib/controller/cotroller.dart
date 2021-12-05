import 'package:flutter/material.dart';
import 'package:get/get.dart';
class  MyController extends GetxController {

  RxInt currentIndex=0.obs;
  // ignore: non_constant_identifier_names

  RxInt c_ndex=0.obs;

  late PageController pageController;
  RxDouble x=0.0.obs,y=0.0.obs,z=1.0.obs;
  
  RxDouble x2=0.0.obs,y2=0.0.obs,z2=1.0.obs;
  RxBool isopeDrawer =false.obs;


  void openDarwer(){
    if(isopeDrawer.value==false){
      x.value=200.0;
      y.value=110.0;
      z.value=0.6;
      isopeDrawer.value=true;
    }
    else if(isopeDrawer==true){
      
      x.value=0.0;
      y.value=0.0;
      z.value=1.0;
      isopeDrawer.value=false;
    }
  update();
  }

  @override
  void onInit() {
    pageController=PageController(initialPage: 0);
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}