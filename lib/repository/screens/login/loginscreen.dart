import 'package:flutter/material.dart';
import 'package:flutter_basics/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:flutter_basics/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(img: 'upperImgS.png'),
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomImage(img: 'logo-main.png'),
            const SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: 'Last Minute App',
                color: const Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 25),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    UiHelper.CustomText(
                        text: 'Himu CHowdhury',
                        color: Color(0XFF000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text: '7xxxTxxG',
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                  text: 'Login With',
                                  color: Color(0XFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'bold'),
                              SizedBox(
                                width: 5,
                              ),
                              UiHelper.CustomImage(img: 'zomato.png'),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    UiHelper.CustomText(
                        text:
                            'Access your saved addresses from Zomato automatically!',
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.w500,
                        fontSize: 11),
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(
                      text: 'or login with phone number',
                      color: Color(0XFF269237),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
