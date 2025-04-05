import 'package:blinkit/repository/widgets/uihelper.dart';

import 'package:flutter/material.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

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
                color: Color(0XFFF7CB45),
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
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w700,
                              fontsize: 12,
                            ),
                            SizedBox(height: 1), // ✅ Text ke beech ka gap
                            UiHelper.CustomText(
                              text: "16 minutes",
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.w700,
                              fontsize: 17,
                            ),
                            Row(children: [

                              UiHelper.CustomText(text: " Home", color: Color(0XFF000000), fontWeight: FontWeight.w700, fontsize: 12),
                              UiHelper.CustomText(text: " -Sanskar Yadav, Mumbai, maharashtra", color: Color(0XFF000000), fontWeight: FontWeight.w400, fontsize: 12),
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
                backgroundColor: Colors.white,
               child: Icon(Icons.person,color:Colors.black, size: 25,),
               // backgroundImage: AssetImage("assets/images/user.png"),  // isay haam is lya use nhi kr rahe hai bcz image blur ho jara raha tha

              )
              ),
            ],
          ),
          UiHelper.CustomImage(img: "shopping-cart.png"),
          SizedBox(height: 20,),
          UiHelper.CustomText(text: "Reordering will be easy", color: Color(0XFF000000), fontWeight: FontWeight.w700, fontsize: 16,fontfamily: "bold"),
          UiHelper.CustomText(text: "Items you order will show up here so you can buy", color: Color(0XFF000000), fontWeight: FontWeight.bold, fontsize: 12),
          UiHelper.CustomText(text: "them again easily.", color: Color(0XFF000000), fontWeight: FontWeight.bold, fontsize: 12),


          // 2nd row
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: "Bestsellers",
                color: Color(0xFF000000),
                fontWeight: FontWeight.w600,
                fontsize: 16,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20),

              // ---------- Item 1 ----------
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image 45.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButtom(() {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  UiHelper.CustomText(
                    text: "Amul Slim Trim",
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontsize: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2,right: 50),
                    child: Row(children: [
                      UiHelper.CustomImage(img: "timer3.png"),
                      UiHelper.CustomText(text: "16 MINS", color: Color(0XFF9C9C9C), fontWeight: FontWeight.w400, fontsize: 10)

                    ],
                    ),
                  ),
                  SizedBox(height:10 ,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2,right: 40),
                    child: Row(children: [
                      UiHelper.CustomImage(img: "image 49.png"),
                      UiHelper.CustomText(text: "32", color: Colors.black, fontWeight: FontWeight.w700, fontsize: 15,fontfamily: "bold")

                    ],
                    ),
                  )



                ],

              ),

              SizedBox(width: 20),

              // ---------- Item 2 ----------
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image4.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButtom(() {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  UiHelper.CustomText(
                    text: "Potato (Aloo)",
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontsize: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2,right: 40),
                    child: Row(children: [
                      UiHelper.CustomImage(img: "timer3.png"),
                      UiHelper.CustomText(text: "16 MINS", color: Color(0XFF9C9C9C), fontWeight: FontWeight.w400, fontsize: 10)

                    ],
                    ),
                  ),
                  SizedBox(height:10 ,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2,right: 40),
                    child: Row(children: [
                      UiHelper.CustomImage(img: "image 49.png"),
                      UiHelper.CustomText(text: "32", color: Colors.black, fontWeight: FontWeight.w700, fontsize: 15,fontfamily: "bold")

                    ],
                    ),
                  ),

                ],
              ),

              SizedBox(width: 20),

              // ---------- Item 3 ----------
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image46.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 65),
                        child: UiHelper.CustomButtom(() {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  UiHelper.CustomText(
                    text: "Hybrid Tomato",
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontsize: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2,right: 40),
                    child: Row(children: [
                      UiHelper.CustomImage(img: "timer3.png"),
                      UiHelper.CustomText(text: "16 MINS", color: Color(0XFF9C9C9C), fontWeight: FontWeight.w400, fontsize: 10)

                    ],
                    ),
                  ),
                  SizedBox(height:10 ,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2,right: 40),
                    child: Row(children: [
                      UiHelper.CustomImage(img: "image 49.png"),
                      UiHelper.CustomText(text: "32", color: Colors.black, fontWeight: FontWeight.w700, fontsize: 15,fontfamily: "bold")

                    ],
                    ),
                  ),
                ],

              ),

            ],
          ),


        ],
      ),
    );
  }
}
