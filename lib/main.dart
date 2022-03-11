// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/app_button.dart';
import 'package:my_first_flutter_app/app_textField.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // MaterialApp app=MaterialApp()
    // return app()
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

 // class HomeScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  ElevatedButton(
//             onPressed: (){
//               print("Button Has been clicked");}
//             , child: const Text('Button')),
//       ),
//     body: const Center(
//       child: Text("Hello App",
//           style:TextStyle(fontSize:80, color:Colors.deepPurple )),
//     )
//     );
//   }
// }

class HomeScreen extends StatelessWidget{
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
             const Text("Lets sign you up",
              style:TextStyle(color: Colors.white, fontSize: 35, fontWeight:FontWeight.bold)),
            const SizedBox(height: 14,),
            const Text("Welcome \nJoin The Community!",
                style:TextStyle(color: Colors.white, fontSize: 35)),
          const SizedBox(height: 35),
            const appTextField(placeholder:" Enter your Full Name"),
            const appTextField(placeholder: "Enter your Email Address"),
            const appTextField(placeholder: "Enter your password"),
          const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Already Have an Account?', style:TextStyle(color:Color(0xFF8F8F9E),fontSize:15)
                ),
                Text(' Sign In', style:TextStyle(color:Colors.white,fontSize:15)
                )
            ],),
            SizedBox(height: 10),
            AppButton(label:"Signup", onPress:onSignPress),
          ],
        ),
      ));
  }
void onSignPress(){}
}






