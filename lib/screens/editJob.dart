import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/app_button.dart';
import 'package:my_first_flutter_app/app_textField.dart';
import 'package:my_first_flutter_app/iconfield.dart';
import 'package:my_first_flutter_app/jobCard.dart';
import 'package:my_first_flutter_app/paraField.dart';
import 'package:my_first_flutter_app/screens/home.dart';

import 'package:my_first_flutter_app/screens/signin.dart';

class editJob extends StatelessWidget {
  const editJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff191720),
        body: Padding(
          // margin: EdgeInsets.all(100),
            padding:
            const EdgeInsets.only(top: 80, left: 20, bottom: 20, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_)=>Home())
                          );
                        },

                        child: Image.asset('assets/images/leftArrow.png', height: 30),

                    ),
                     const SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [


                        Text("Edit Job",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    ],
                ),
                appTextField(placeholder: "Enter Job"),
                paraTextField(placeholder:"Enter Paragraph"),




              ],
            )



        )
    );
  }
}
