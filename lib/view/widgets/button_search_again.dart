import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Animation/fadeAnimation.dart';

import 'package:page_transition/page_transition.dart';

import '../screens/SearchScreen/SearchScreen.dart';
class button_Search_again extends StatelessWidget {
  const button_Search_again({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: InkWell(
          onTap: (){
            Navigator.push(context,PageTransition(child: SearchScreen(), type: PageTransitionType.leftToRightWithFade,duration:const Duration(seconds: 1)));
          },
          child: Container(
            alignment: Alignment.center,
            height: 70,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.4),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(-5,0), // changes position of shadow
                ),
              ],
            ),
            child: Text('Search again',style:TextStyle(fontSize: 25),),
          ),
        ),
      ),
    );
  }
}