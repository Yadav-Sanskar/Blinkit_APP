import 'package:flutter/material.dart';

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
}
