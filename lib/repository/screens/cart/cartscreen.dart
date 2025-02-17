import 'package:flutter/material.dart';
import 'package:flutter_basics/repository/widgets/uihelper.dart';

class CartScreen extends StatelessWidget {

  TextEditingController searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 40,),

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
                              fontFamily: "bold",),
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
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomImage(img: "cart.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "Reordering will be easy",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "bold"),
            UiHelper.CustomText(
              text: "Items you order will show up here so you can buy",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            UiHelper.CustomText(
              text: "them again easily.",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomText(
                    text: "Bestsellers",
                    color: Color(0XFF000000),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: "bold")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    UiHelper.CustomImage(img: "milk.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 95, left: 65),
                      child: UiHelper.CustomButton(() {}),
                    ),

                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Stack(
                  children: [
                    UiHelper.CustomImage(img: "potato.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 95, left: 65),
                      child: UiHelper.CustomButton(() {}),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Stack(
                  children: [
                    UiHelper.CustomImage(img: "tomato.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 95, left: 65),
                      child: UiHelper.CustomButton(() {}),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
  }

