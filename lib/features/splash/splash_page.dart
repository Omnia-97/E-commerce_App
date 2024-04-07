import 'dart:async';

import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/constants.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

import '../../config/routes/pages_route_name.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});


  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      navigatorKey.currentState!.pushReplacementNamed(PagesRouteName.signIn);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AppImages.splash,
        fit: BoxFit.fill,
        width: Constants.mediaQuery.size.width,
        height: Constants.mediaQuery.size.height,
      ),
    );
  }
}
