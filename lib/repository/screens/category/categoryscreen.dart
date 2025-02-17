import 'package:flutter/material.dart';
import 'package:flutter_basics/repository/widgets/uihelper.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var groceryKitchen = [
    {"img": "watermelon.png", "text": "Vegetables & \n Fruits"},
    {"img": "wheat.png", "text": "Atta, Dal & \n Rice"},
    {"img": 'manythings.png', "text": "Oil, Ghee & \n Masala"},
    {"img": 'dairy.png', "text": "Dairy, Bread & \n Milk"},
    {"img": 'biscuite.png', "text": "Biscuits & \n Bakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "16 minutes",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "HOME ",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        UiHelper.CustomText(
                            text: "- Himu Chowdhury, Bashundhara, Dhaka",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 14)
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 20,
                  child: UiHelper.CustomTextField(controller: searchController))
            ],
          ),
          Row(children: [
            SizedBox(
              height: 40,
              width: 10,
            ),
            UiHelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15)
          ]),
          SizedBox(height: 20,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: ListView.builder(itemBuilder: (context, index){
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 78,
                        width: 71,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)
                        ),
                        child: UiHelper.CustomImage(img: groceryKitchen[index]['img'].toString()),
                      ),
                    ),
                    UiHelper.CustomText(text: groceryKitchen[index]['text'].toString(), color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14)
                  ],
                );
              }, itemCount: groceryKitchen.length, scrollDirection: Axis.horizontal,),
            ),
          )
        ],
      ),
    );
  }
}
