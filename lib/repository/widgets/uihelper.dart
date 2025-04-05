import 'package:flutter/material.dart';


// yaa image ko call kren k liya
class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }
  // ya login k Text k size or color baki sab define hai
  static CustomText(
  {
    required String text,
     required Color color,
  required FontWeight fontWeight,
  String? fontfamily,
  required double fontsize}){
    return Text(
      text,
        style:TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontWeight,
          color: color),
    );

}

// ADD button liya hai
static CustomButtom(VoidCallback callback){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0XFF27AF34)
        ),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Center(child: Text("add", style: TextStyle(fontSize: 10, color: Color(0XFF27AF34), ),),),
    );
}



}
