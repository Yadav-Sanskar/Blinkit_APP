
import 'package:blinkit/repository/widgets/uihelper.dart';

import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // stack Haam taab use kre hi taab hame ek k uppar ek kcha dekhanaho
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity, // taki jitni width phone ki hai utni le sake
                color: Color(0XFFEC0505),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // ✅ Left align text
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 130, width: 10), // ✅ Spacing ke liye
                        Column( // ✅ Row hata ke Column use kiya
                          crossAxisAlignment: CrossAxisAlignment.start, // ✅ Left align text
                          children: [
                            UiHelper.CustomText(
                              text: "Blinkit in",
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontsize: 12,
                            ),
                            SizedBox(height: 1), // ✅ Text ke beech ka gap
                            UiHelper.CustomText(
                              text: "16 minutes",
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontsize: 17,
                            ),
                            Row(children: [

                              UiHelper.CustomText(text: " Home", color: Color(0XFFFFFFFF), fontWeight: FontWeight.w700, fontsize: 12),
                              UiHelper.CustomText(text: " -Sanskar Yadav, Mumbai, maharashtra", color: Color(0XFFFFFFFF), fontWeight: FontWeight.w400, fontsize: 12),
                            ],)
                          ],

                        ),
                      ],
                    ),

                    Center(
                      // ✅ Poore screen ke center me le aayega
                      child: SizedBox(
                        height: 40,
                        width: 350, // 🔹 Search box ka width set kiya
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 4, left: 12), // 🔹 Icon ka spacing adjust
                              child: Icon(Icons.search, size: 25),
                            ),

                            suffixIcon: Padding(
                              padding: EdgeInsets.only(top: 8, right: 8), // 🔹 Top aur Right me spacing
                              child: Icon(Icons.mic, color: Colors.black, size: 24),
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(top: 15 ),// search k to se liya hai
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              Positioned(  // Positioned se rap kiya show padding or marring deyb sake ealsiy
                  right: 20,
                  top: 50,
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person,color:Colors.white, size: 25,),
                    // backgroundImage: AssetImage("assets/images/user.png"),  // isay haam is lya use nhi kr rahe hai bcz image blur ho jara raha tha

                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}