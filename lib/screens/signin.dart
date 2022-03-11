import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/app_button.dart';
import 'package:my_first_flutter_app/app_textField.dart';
import 'package:my_first_flutter_app/screens/signup.dart';
class SignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff191720),
        // body: Text('Lets Sign You Up'),
        body: Padding(
          // margin: EdgeInsets.all(100),
          padding: const EdgeInsets.only(
              top: 110,
              left:20,
              bottom:59,
              right: 20
          ),
          // color: Colors.redAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children:  [
              const Text("Let's sign you in",
                  style:TextStyle(color: Colors.white, fontSize: 35, fontWeight:FontWeight.bold)),
              const SizedBox(height: 14,),
              const Text("Welcome back \nYou've been Missed !",
                  style:TextStyle(color: Colors.white, fontSize: 32)),
              const SizedBox(height: 35),
              const appTextField(placeholder:" Enter your Email Address"),
              const appTextField(placeholder: "Enter your Password"),

              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_)=>SignUp())
                  );
                },

                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Don't have an account?", style:TextStyle(color:Color(0xFF8F8F9E),fontSize:15)
                      ),
                      Text(' Sign Up', style:TextStyle(color:Colors.white,fontSize:15)
                      )
                    ],),
              ),
              const SizedBox(height: 10),
              AppButton(label:"Sign In", onPress:onSignPress),
            ],
          ),
        ));
  }
  void onSignPress(){}
}