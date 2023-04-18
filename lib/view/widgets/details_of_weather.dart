import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Animation/fadeAnimation.dart';
import '../../ApiManager/controller/controller.dart';



class detailsOfWeather extends StatelessWidget {
  const detailsOfWeather({
    super.key,
    required this.cubit,
  });

  final ApiManager cubit;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
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
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: 10,),
            Text('Temperture is ${cubit.getWeatherModel.temp}',style: TextStyle(fontSize: 20),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Max Temp : ${cubit.getWeatherModel.maxTemp}',style: TextStyle(fontSize: 18),)),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('Min Temp : ${cubit.getWeatherModel.minTemp}',style: TextStyle(fontSize: 18),))

              ],
            ),
            SizedBox(height: 10,),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text('Chance of rain: ${cubit.getWeatherModel.daily_chance_of_rain} %',style: TextStyle(fontSize: 20)),
                )),
            SizedBox(height: 5,),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text('Humidity = ${cubit.getWeatherModel.avghumidity} %',style: TextStyle(fontSize: 20)),
                )),
            SizedBox(height: 5,),
            Text('${cubit.getWeatherModel.weatherStateName}',style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}