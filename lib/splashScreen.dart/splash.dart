import 'package:figma_design/constants.dart';
import 'package:figma_design/controller/cotroller.dart';
import 'package:figma_design/model/onboarding.dart';
import 'package:figma_design/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  MyController mycontroller=Get.put(MyController());
  // PageController _page=new PageController(initialPage: 0);
  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      
        backgroundColor: Colors.white,
      appBar: getAppBar(),
      body: Container(
        // margin: EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            // Spacer(),
            Expanded(
              child: PageView.builder(
                controller: mycontroller.pageController,
                onPageChanged: (int index) {
                 mycontroller.currentIndex.value=index;
                },
                itemCount: contents.length,
                itemBuilder: (_,index){
                  print(index);
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top:60,),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.4,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage( contents[index].img,),
                              fit: BoxFit.contain
                              
                              
                              )
                            ),
                           
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:0,right: 0),
                              child: Text(contents[index].title,textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                
                              ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left:0,right: 0),
                              child: Text(contents[index].descript,textAlign: TextAlign.center,style: 
                           TextStyle(
                                  color: Color(0xff727272
),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25,

                              )
                              ),
                            )
                        ],
                      ),
                    ),
                  );
                }),

            ),
            Container(
              margin: EdgeInsets.only(bottom: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:List.generate(contents.length, (index) =>builddot(index,context),
              ),
            )),
            // Spacer()
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          border: Border.all(color: purpleclr,width: 4),
          borderRadius: BorderRadius.all(Radius.circular(35))
        
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          shape: StadiumBorder(
            side: BorderSide(
              color: purpleclr,
              width: 5,
              
            )
          ),
          
          child: Center(
            child: Container(
              padding: EdgeInsets.only(left: 8,),
              child: RichText(
                text: TextSpan(
                  text: ">",style: TextStyle(fontSize: 18),
                  children: [
                    TextSpan(
                      text: ">",style: TextStyle(fontSize: 20)
                    )
                  ]
                )),
              // child: Text.rich(
              //   TextSpan(
              //     text: '>',style: TextStyle(fontSize: 14),
              //     children: [
              //       TextSpan(
              //         text: '>',style: TextStyle(fontSize: 20)
              //       )
              //     ]
              //   )

              // )
            ),
          ),
          onPressed: (){
           
            mycontroller.pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeIn);
            // ignore: unrelated_type_equality_checks
            if(mycontroller.currentIndex==contents.length-1){
                Get.offAll(Home());
            }
          },
        ),
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      leading:Obx(() => IconButton(onPressed: (){
        mycontroller.pageController.previousPage(duration: Duration(milliseconds: 250), curve: Curves.easeIn);
      }, icon: Icon(Icons.arrow_back_ios,color: mycontroller.currentIndex.value==1?Colors.black:Colors.white,)))
      ,
      elevation: 0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white),
      backgroundColor: Colors.white,
      
    );
  }

  builddot(int index, BuildContext context) {
    //currentIndex=index;
    return Obx(()=> Container(
      height: 8,
      
      width:mycontroller.currentIndex.value==index?30:10 ,
      margin: EdgeInsets.only(right:5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:mycontroller.currentIndex.value==index ? purpleclr:greyClr,
      ),)
    );
  }
}