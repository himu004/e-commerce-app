import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_basics/repository/screens/login/loginscreen.dart';
import 'package:flutter_basics/repository/widgets/uihelper.dart';

import '../../../data/constants/appcolors.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomImage(img: 'logo.png')
        ],
      ),
    );
  }
}
