
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/app_button.dart';
import 'package:my_first_flutter_app/app_textField.dart';
import 'package:my_first_flutter_app/iconfield.dart';
import 'package:my_first_flutter_app/jobCard.dart';

import 'package:my_first_flutter_app/screens/signin.dart';

class Home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xff191720),
        body: Padding(
        // margin: EdgeInsets.all(100),
        padding: const EdgeInsets.only(
            top: 67,
            left:20,
            bottom:20,
            right: 20
    ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children:  [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      Text("Welcome",style:TextStyle(color: Colors.white, fontSize: 25, fontWeight:FontWeight.bold)),

                      Text("Sajeel Ahmed ",style:TextStyle(color: Colors.white, fontSize: 28)),

                    ],
                  ),
                  const Spacer(),

                   const Icon(
                    Icons.reply_outlined,
                    color: Colors.white,
                    size: 50,
                  ),



                ],
              ),

              const SizedBox(height: 5),
              const iconTextField(placeholder: "Search Keywords.."),
              const jobCard(placeholder: "Flutter Developer Required ",loc:"Karachi,Pakistan"),
              const jobCard(placeholder: "Flutter Developer Required ",loc:"Karachi,Pakistan"),
              const jobCard(placeholder: "Flutter Developer Required ",loc:"Karachi,Pakistan"),
                const jobCard(placeholder: "Flutter Developer Required ",loc:"Karachi,Pakistan"),
              const jobCard(placeholder: "Flutter Developer Required ",loc:"Karachi,Pakistan"),



              // jobCard(placeholder: "yup"),
              // jobCard(placeholder: "yup"),
              // jobCard(place
              // holder: "yup"),
              // jobCard(placeholder: "yup"),

            ],
            
          )

      // Icon(
          //   Icons.search_outlined, color:Color(0xFF5D5D67),
          // ),



    ));
  }
}
