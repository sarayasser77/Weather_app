import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Animation/fadeAnimation.dart';
import '../../ApiManager/controller/controller.dart';



class ContainerIconOfWeather extends StatelessWidget {
  const ContainerIconOfWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiManager cubit =BlocProvider.of(context);
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 69),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(-5,0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FadeAnimation(1,
              child: Container(
                  height: 150,width: 150
                  ,
                  child:Lottie.asset(
                      cubit.getWeatherModel.weatherStateName=='Patchy rain possible'?'images/rainy.json':
                      cubit.getWeatherModel.weatherStateName=='Sunny'?'images/sunny.json':'images/cloudy.json'
                  )
              ),
            )
            //Image.network('https:${cubit.getWeatherModel.icon}',fit: BoxFit.fill,)),

          ],
        ),
      ),
    );
  }
}
