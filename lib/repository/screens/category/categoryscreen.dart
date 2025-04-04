import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var grocerykitchen = [
    {"img": "image41.png", "text": "Vegetables & \nFruits"},
    {"img": "image42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image45.png", "text": "Biscuits & \nBakery"}
  ];
  var secondgrocery = [
    {"img": "image21.png", "text": "Dry Fruits &\nCereals"},
    {"img": "image22.png", "text": "Kitchen &\nAppliances"},
    {"img": "image23.png", "text": "Tea & \nCoffees"},
    {"img": "image24.png", "text": "Ice Creams &\nmuch more"},
    {"img": "image25.png", "text": "Noodles &\nPacket Food"}
  ];
  var snacksanddrinks = [
    {"img": "image31.png", "text": "Chips &\nNamkeens"},
    {"img": "image32.png", "text": "Sweets &\nChocalates"},
    {"img": "image33.png", "text": "Drinks &\nJuices"},
    {"img": "image34.png", "text":  "Sauces &\nSpreads "},
    {"img": "image35.png", "text": "Beauty &\nCosmetics"}
  ];
  var hosuehold = [
    {"img": "image36.png", "text": "Vegetables & \nFruits"},
    {"img": "image37.png", "text": "Atta, Dal & \nRice"},
    {"img": "image38.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image39.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image40.png", "text": "Biscuits & \nBakery"}
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
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                fontWeight: FontWeight.bold,
                  fontsize: 14,
                  )

            ],
          ),

          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 4,
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
          Expanded(
            flex: 4,
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
                              img: secondgrocery[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: secondgrocery[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: secondgrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold"),
            ],
          ),
          Expanded(
            flex: 4,
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
                              img: snacksanddrinks[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Household Essentials",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 14)
            ],
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)),
                      child: UiHelper.CustomImage(
                          img: hosuehold[index]["img"].toString()),
                    ),
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}