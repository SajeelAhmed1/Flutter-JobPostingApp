import 'package:flutter/material.dart';
class paraFilledField  extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  // final String placeholder;
  //
  // const paraFilledField({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top:20,right: 5) ,
        padding: const EdgeInsets.all(10),
        height: 290,
        decoration:   BoxDecoration(
            color: const Color(0xFF1E1C24),
            borderRadius:BorderRadius.circular(15),
            border: Border.all(
                color: const Color(0xff5D5D67),
                width:1
            ) ),

        child:TextField(
          controller: TextEditingController(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam rhoncus ac metus ac posuere. Nulla in tristique ante. Donec vel augue nisi. Nunc ultrices nibh ac magna tincidunt rutrum. Maecenas ac bibendum mi. Phasellus scelerisque cursus mollis. Maecenas porttitor non neque vel malesuada. Fusce mauris massa, tempor ac erat vitae, tincidunt efficitur massa. Phasellus lacinia, libero quis rhoncus aliquam, ante neque porttitor odio, id tempor quam orci quis nunc. Aliquam lacinia nibh condimentum sollicitudin malesuada. In hac habitasse platea dictumst"),
          style: const TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize:15),
            border: InputBorder.none,),
          keyboardType: TextInputType.multiline,
          maxLines: null,

        ));

  }
}
