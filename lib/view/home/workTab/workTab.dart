import 'package:figma_design/constants.dart';
import 'package:figma_design/widgets/backButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class WorkTab extends StatelessWidget {
  const WorkTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButtonWidget(clr: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 15),
              child: Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0.01),
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.black38
                    )
                  ]
                ),
                child: Center(
                  child: CircularPercentIndicator(
                radius: 200.0,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.green,
                animation: true,
                animationDuration: 1200,
                lineWidth: 15.0,
                percent: 0.4,
                center:Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "  397\n",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                      
                      TextSpan(text: "total token\n   owned",)
                    ]
                  )
                )
                ),
              ),
            ),),
            SizedBox(height: 20,),

            widget_a('Olympics'),
            widget_a('Sky Gardens')
          ],
        ),
      ),
    );
  }

  Padding widget_a(String a) {
    return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: Text("$a",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.black38,)),
                  ),

                ],
              ),
              height: 60,
              width: double.infinity,
              decoration:BoxDecoration(
                color: Color(0xffF7F7F7),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0.1),
                    blurRadius: .1,
                    spreadRadius: .2
                  ),
                  
                ]
              )
            ),
          );
  }
}