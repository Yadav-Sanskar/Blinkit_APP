
import 'package:blinkit/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';


class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            UiHelper.CustomImage(img:"Blinkit Onboarding Screen.png"),
            SizedBox(height: 10,),
            UiHelper.CustomImage(img:"image10.png"),
            // ya haam ne text ko time bhi kiya hai customText naam se
            SizedBox(height: 5,),
            UiHelper.CustomText(text: "India’s last minute app", color: Color(0XFF000000), fontWeight: FontWeight.bold, fontsize: 20, fontfamily:"bold"),
            // LOGNIN Conntainer
            Expanded(
              child: ListView(
                children: List.generate(1, (index) {  // ✅ Multiple cards banane ke liye loop
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Card(
                      elevation: 4, // ya outer lie ko dena hai container k
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFFFFFFF),
                        ),
                        // box k anadr k sab ek k one by by hai show is liya chil k baad colum me sab add kr rahe hai
                        child: Column( children: [
                          SizedBox(height: 10,),
                          UiHelper.CustomText(text: "Sanskar", color: Color(0XFFF000000), fontWeight: FontWeight.w500, fontsize: 15),
                          SizedBox(height: 5,),
                          UiHelper.CustomText(text: "7233211289", color: Color(0XFF9C9C9C), fontWeight: FontWeight.w700, fontsize: 14),
                          // login button
                          SizedBox(height: 15,),
                          SizedBox(height: 48, width: 295,
                              child:ElevatedButton(onPressed:(){
                                // ya login button pe click krte he direct main home screen me rendedar hone k liya
                                {
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>BottomNavScreen()));
                                };
                              }, style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFE23744),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                              ), child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                UiHelper.CustomText(text: "Login  with", color: Color(0XFFFFFFFF), fontWeight: FontWeight.w700, fontsize: 14),
                                SizedBox(width: 5,),
                                  UiHelper.CustomImage(img: "image9.png"),
                                  SizedBox(height: 10,),
                              ],

                              ) ),
                          ),
                          SizedBox(height: 10,),
                          UiHelper.CustomText(text: "Access your saved addresses from Zomato automatically!", color: Color(0XFF9C9C9C), fontWeight: FontWeight.w400, fontsize: 10),
                          SizedBox(height: 20,),
                          UiHelper.CustomText(text: "or login with phone number", color: Color(0XFF269237), fontWeight: FontWeight.w400, fontsize: 10),

                          
                        ],),
                      ),
                    ),
                  );
                }),
              ),
            )


          ]),
      ),
    );
  }

}