import 'package:flutter/material.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFBF0CE),
      body: Column(
        children: [
          // 🔹 TOP BANNER
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: const Color(0XFFF7CB45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(height: 130, width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.CustomText(
                              text: "Blinkit in",
                              color: const Color(0XFF000000),
                              fontWeight: FontWeight.w700,
                              fontsize: 12,
                            ),
                            const SizedBox(height: 1),
                            UiHelper.CustomText(
                              text: "16 minutes",
                              color: const Color(0XFF000000),
                              fontWeight: FontWeight.w700,
                              fontsize: 17,
                            ),
                            Row(
                              children: [
                                UiHelper.CustomText(
                                  text: " Home",
                                  color: const Color(0XFF000000),
                                  fontWeight: FontWeight.w700,
                                  fontsize: 12,
                                ),
                                UiHelper.CustomText(
                                  text: " -Sanskar Yadav, Mumbai, Maharashtra",
                                  color: const Color(0XFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontsize: 12,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        height: 40,
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search...",
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(top: 4, left: 12),
                              child: Icon(Icons.search, size: 25),
                            ),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.only(top: 8, right: 8),
                              child: Icon(Icons.mic,
                                  color: Colors.black, size: 24),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(top: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20,
                top: 50,
                child: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // 🔹 TITLE
          UiHelper.CustomText(
            text: "Print Store",
            color: const Color(0XFF000000),
            fontWeight: FontWeight.bold,
            fontsize: 32,
          ),
          UiHelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: const Color(0XFF9C9C9C),
            fontWeight: FontWeight.w700,
            fontsize: 14,
          ),

          const SizedBox(height: 40),

          // 🔹 PRINT DETAILS BOX
          Stack(
            children: [
              Container(
                height: 200,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Documents",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "✦ Price starting at ₹3/ page",
                          color: const Color(0XFF9C9C9C),
                          fontWeight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "✦ Paper quality: 70 GSM",
                          color: const Color(0XFF9C9C9C),
                          fontWeight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "✦ Single side prints",
                          color: const Color(0XFF9C9C9C),
                          fontWeight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0XFF27AF34),
                            ),
                            child: const Text(
                              "Upload Files",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  child: UiHelper.CustomImage(img: "image 62.png"), right: 20,bottom: 60,),
            ],
          ),
        ],
      ),
    );
  }
}
