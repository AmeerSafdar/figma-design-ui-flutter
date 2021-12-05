
import 'package:figma_design/controller/cotroller.dart';
import 'package:figma_design/view/home/drawer/components/listeTileWidget.dart';
import 'package:figma_design/view/home_screen/filesTab/FilesTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool a=false;
   bool isOpen=false;
    

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
        color:Colors.white,
        duration: Duration(milliseconds: 200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // IconButton(, Icons.menu,color: Colors.black,)
            GetBuilder<MyController>(
              init: MyController(),
              builder: (controler) {
                return IconButton(onPressed: (){
                  controler.openDarwer();
                }, icon: Icon(Icons.menu));
              }
            ),
            
            IconButton(onPressed: (){}, icon: Icon(Icons.notification_add))
          ],
        ),
    
    );
  }
}



class drawerIcon  extends StatelessWidget {
  
  drawerIcon({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      
      child: Column(
        
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Row(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0),
                  child: Text("Ameer \n Safdar",style: TextStyle(color: Colors.black,fontSize: 18 ,fontWeight: FontWeight.w600),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                ItemList(taped: (){
                  Get.to(()=> FIlesTab());
                }, txt: 'Home', icons: Icons.home),
                
                ItemList(taped: ()=>Get.to(FIlesTab()), txt: 'My Wallet', icons: Icons.wallet_giftcard),
                
                ItemList(taped: (){}, txt: 'Sell Tokens', icons: Icons.sell),
                
                ItemList(taped: (){}, txt: 'Notifications', icons: Icons.notifications),
                
                ItemList(taped: (){}, txt: 'Tutorial', icons: Icons.bookmark),
                
                ItemList(taped: (){}, txt: 'Contact', icons: Icons.contact_mail),
                
                // ItemList(taped: (){}, txt: 'Logout', icons: Icons.exit_to_app_sharp),
      
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,top: 10.0,right:210),
                        child: Divider(color: Colors.black26,height: 2,),
                      ),
                
                ItemList(taped: (){
                }, txt: 'Logout', icons: Icons.exit_to_app_sharp),
      
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
