import 'package:figma_design/constants.dart';
import 'package:figma_design/widgets/backButtonWidget.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal :18.0,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButtonWidget(clr: Colors.white),
          SizedBox(height: 50,),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xffF7F7F7)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,width: 30,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     SizedBox(height: 40,width: 30,),
                    Text("Shibu Mandla",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 60,),
                    Stack(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/images/user.png"),
                          ),
                        ),
                        Positioned(
                          left: 55,
                          top: 5,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Colors.black
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.black,)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30.0),
                  child: Text("safdar@gmail.com"),
                )
              ],
            ),
          )
        ],
      
      ),
    );
  }
}