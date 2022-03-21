import 'package:flutter/material.dart';
class textFilledField  extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  // final String placeholder;
  //
  // const textFilledField ({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top:20,right: 5) ,
        padding: const EdgeInsets.all(8),
        decoration:   BoxDecoration(
            color: const Color(0xFF1E1C24),
            borderRadius:BorderRadius.circular(15),
            border: Border.all(
                color: const Color(0xff5D5D67),
                width:1
            ) ),
        child:  TextField(
          controller: TextEditingController(text: "Flutter Developer"),
          style: const TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize:15),
            border: InputBorder.none,
            // prefixIcon: Icon(Icons.search),
          ),
        )
    );

  }
}
