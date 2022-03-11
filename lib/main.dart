// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/app_button.dart';
import 'package:my_first_flutter_app/app_textField.dart';
import 'package:my_first_flutter_app/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // MaterialApp app=MaterialApp()
    // return app()
    return MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false ,
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








