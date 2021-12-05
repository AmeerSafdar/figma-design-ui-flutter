import 'package:figma_design/constants.dart';
import 'package:figma_design/view/myWallet/myWallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            
                margin: EdgeInsets.only(right: 18,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  minWidth: 120,
                  height: 45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: purpleclr,
                  onPressed: (){
                    Get.to(Wallet());
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          );
  }
}