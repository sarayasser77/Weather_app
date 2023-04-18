import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'SearchScreen/SearchScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return
     AnimatedSplashScreen(
     curve: Curves.slowMiddle,
     splash:Column(
       children: [
         Expanded(child: Lottie.asset('images/splash.json',height: 500,width: 500)),
         Expanded(child: Lottie.asset('images/splash loading.json'))
       ],
     ),
     duration: 2500,
     splashIconSize: 400,
     nextScreen: SearchScreen(),
     splashTransition: SplashTransition.fadeTransition,
     backgroundColor: Color(0xffF6F1F1),
     );
  }
}