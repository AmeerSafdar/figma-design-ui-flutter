import 'package:figma_design/view/home_screen/filesTab/FilesTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemList extends StatelessWidget {
    VoidCallback taped;
    String txt;
    IconData icons;
   ItemList({
     Key ?key,
  required this.taped,required this.txt,required this.icons
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: 
       (){
        print('zadf');
        Get.to(FIlesTab());
      },
      child: ListTile(
        leading: Icon(icons,color: Colors.black,),
        title: Text(txt),
       
        ),
    );
  }
}