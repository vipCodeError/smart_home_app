import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back, color: Colors.white,),
          Text("LIVING ROOM", style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontFamily: "gotham_bold"
          ),),

          CircleAvatar(
            backgroundImage: AssetImage("assets/images/bussiness_man.png"),
          ),
        ],
      ),
    );
  }

}