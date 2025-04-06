import 'package:blinkit/repository/widgets/uihelper.dart';

import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  // const Homescreen({super.key});

  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n& Candles"},
    {"img": "image 51.png", "text": "Diwali\nGifts"},
    {"img": "image 52.png", "text": "Appliances \n& Gadgets"},
    {"img": "image 53.png", "text": "Home \n& Living"},
  ];

  var categroy = [
    {"img": "image 54.png", "text": "Golden Glass \nWooden Lid Candle (Oudh) "},
    {"img": "image 57.png", "text": "Royal Gulab Jamun\nBy Bikano "},
    {"img": "image 63.png", "text": "Bikaji Bhujia "},
  ];

  var grocerykitchen = [
    {"img": "image41.png", "text": "Vegetables & \nFruits"},
    {"img": "image42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image45.png", "text": "Biscuits & \nBakery"}
  ];

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
                width: double
                    .infinity, // taki jitni width phone ki hai utni le sake
                color: Color(0XFFEC0505),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // ✅ Left align text
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 130, width: 10), // ✅ Spacing ke liye
                        Column(
                          // ✅ Row hata ke Column use kiya
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // ✅ Left align text
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
                            Row(
                              children: [
                                UiHelper.CustomText(
                                    text: " Home",
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w700,
                                    fontsize: 12),
                                UiHelper.CustomText(
                                    text:
                                        " -Sanskar Yadav, Mumbai, maharashtra",
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.w400,
                                    fontsize: 12),
                              ],
                            )
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
                              padding: EdgeInsets.only(
                                  top: 4,
                                  left: 12), // 🔹 Icon ka spacing adjust
                              child: Icon(Icons.search, size: 25),
                            ),

                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                  top: 8,
                                  right: 8), // 🔹 Top aur Right me spacing
                              child: Icon(Icons.mic,
                                  color: Colors.black, size: 24),
                            ),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(
                                top: 15), // search k to se liya hai
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  // Positioned se rap kiya show padding or marring deyb sake ealsiy
                  right: 20,
                  top: 50,
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 25,
                    ),
                    // backgroundImage: AssetImage("assets/images/user.png"),  // isay haam is lya use nhi kr rahe hai bcz image blur ho jara raha tha
                  )),
            ],
          ),
          // Line Which Divide
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.white,
          ),
          //1Iteam
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomImage(img: "image 60.png"),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomText(
                        text: "Mega Diwali Sale",
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontsize: 20,
                        fontfamily: "bold"),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomImage(img: "image 60.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 1, bottom: 1),
                          child: Container(
                            height: 108,
                            width: 87,
                            decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                    text: data[index]["text"].toString(),
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontsize: 10),
                                UiHelper.CustomImage(
                                    img: data[index]["img"].toString()),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                )
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomImage(
                              img: categroy[index]["img"].toString()),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: UiHelper.CustomText(
                            text: categroy[index]["text"].toString(),
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontsize: 8),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Row(
                          children: [
                            UiHelper.CustomImage(img: "timer3.png"),
                            UiHelper.CustomText(
                                text: "16 MINS",
                                color: Color(0XFF9C9C9C),
                                fontWeight: FontWeight.normal,
                                fontsize: 10)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Row(
                          children: [
                            UiHelper.CustomImage(img: "image 49.png"),
                            UiHelper.CustomText(
                                text: "79",
                                color: Color(0XFF9C9C9C),
                                fontWeight: FontWeight.bold,
                                fontsize: 15)
                          ],
                        ),
                      )
                    ],
                  );
                },
                itemCount: categroy.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              UiHelper.CustomText(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold")
            ],
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: grocerykitchen[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: grocerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ));
  }
}

