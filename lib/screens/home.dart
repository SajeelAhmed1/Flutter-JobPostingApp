import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/app_button.dart';
import 'package:my_first_flutter_app/app_textField.dart';
import 'package:my_first_flutter_app/iconfield.dart';
import 'package:my_first_flutter_app/jobCard.dart';
import 'package:my_first_flutter_app/screens/newJob.dart';
import 'package:my_first_flutter_app/screens/signin.dart';

class Home extends StatelessWidget {
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Welcome",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text("Sajeel Ahmed Siddiqui ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 28)),
                      ],
                    ),
                    const Spacer(),
                    Padding(padding:
                    const EdgeInsets.only(top:15,right: 19),

                      child: Image.asset('assets/images/backArrow.png', height: 30,))

                  ],
                ),

                const SizedBox(height: 5),
                const iconTextField(placeholder: "Search Keywords.."),
                const jobCard(
                    placeholder: "Flutter Developer Required ",
                    loc: "Karachi,Pakistan"),
                const jobCard(
                    placeholder: "Flutter Developer Required ",
                    loc: "Karachi,Pakistan"),
                const jobCard(
                    placeholder: "Flutter Developer Required ",
                    loc: "Karachi,Pakistan"),
                const jobCard(
                    placeholder: "Flutter Developer Required ",
                    loc: "Karachi,Pakistan"),


              ],
            )



            )
        ,floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
        foregroundColor: Colors.black,
        heroTag: 'uniqueTag',
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => newJob()
              ));
        }
    ),
    );
  }
}
