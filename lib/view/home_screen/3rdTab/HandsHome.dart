import 'dart:ui';

import 'package:figma_design/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HandsHome extends StatelessWidget {
  const HandsHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      backgroundColor: purpleclr,
      appBar: AppBar(
        backgroundColor: Colors.white10,
      toolbarHeight: 0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: purpleclr
            ),
        // backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: purpleclr,
        child: Stack(
          children: [

            Positioned(
              child: Container(
                width: double.infinity,
                child: Image(
                  image: AssetImage("assets/images/em.png"),
                ),
              ),
            )
            ,

            Positioned(
              top: 280,
              left: 20,
              child: Container(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Great Job, Safdar\n',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold))
                   , TextSpan(
                     text: 'You have 4 properties',style: TextStyle(fontSize: 18)
                    )
                  ]
                )
              ),
            )),

            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Stack(
                children: [
                   Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25)
                  )
                  ),
                ),

                Positioned(
                  top: 10,
                  left: 170,
                  child: Center(
                    child: Container(
                      width: 70,
                      height: 5,
                      color: Colors.black38,
                    ),
                  ),
                ),

                Positioned(
                  right: 20,
                  top: 15,
                  child: Container(
                    
                    height:25,
                    width:80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow:[
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: Colors.black26
                      )
                    ]
                  ),
                  child:FlatButton(onPressed: (){
                    print('SDf');
                  }, child: Padding(
                    padding: const EdgeInsets.only(top:13.0),
                    child: Text("See all",style: TextStyle(fontSize: 12),),
                  )),
                )),



                Positioned(
                  top: 80 ,
                  left: 50,
                  child: Row(
                    children: [
                      Container(
                        height:60,
                        width: 60,
                          child: Image(image: AssetImage('assets/images/home.png'),),
                        
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      child: Text('Sky Garden',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 80,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.black26,)),
                      
                    ],
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 45),
                    child: Divider(height: 2,color: Colors.black38,),
                  )),



                  Positioned(
                  top: 190 ,
                  left: 50,
                  child: Row(
                    children: [
                      Container(
                        height:60,
                        width: 60,
                          child: Image(image: AssetImage('assets/images/home.png'),),
                        
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      child: Text('Sky Garden',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 80,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.black26,)),
                      
                    ],
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 45),
                    child: Divider(height: 2,color: Colors.black38,),
                  ))
                ],
              ),
            ),
          ],
        ),
        ),
    );
    
  }
}