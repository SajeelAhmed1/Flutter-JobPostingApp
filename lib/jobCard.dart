import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/screens/editJob.dart';

class jobCard extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  final String placeholder;
  final String loc;

  const jobCard({required this.placeholder, required this.loc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 450,
      margin: const EdgeInsets.only(top: 16, right: 5, bottom: 2),
      padding: const EdgeInsets.only(top: 30, right: 10, bottom: 30, left: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF201E27),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                placeholder,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                loc,
                style: const TextStyle(
                  color: Color(0xFF8F8F9E),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_)=>editJob())
              );
            },

            child: Image.asset('assets/images/edit.png', height: 30)

        ),
        // void editTap(){},
          const SizedBox(width: 15),
           Image.asset('assets/images/tbin.png', height: 30,),
          ],
      ),

      // TextField(
      //   style: const TextStyle(color: Colors.white, fontSize: 15),
      //   decoration: InputDecoration(
      //     hintText: placeholder ,
      //     hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize:15),
      //     border: InputBorder.none,
      //     // prefixIcon: Icon(Icons.search),
      //   ),
      // )
    );
  }
}
