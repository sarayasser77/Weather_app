import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheatherapp/ApiManager/weatherStates/weatherStates.dart';
import 'package:wheatherapp/view/widgets/button_search_again.dart';
import 'package:wheatherapp/view/widgets/container_icon_of_weather.dart';
import 'package:wheatherapp/view/widgets/details_of_weather.dart';

import '../../ApiManager/controller/controller.dart';
class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiManager cubit =BlocProvider.of(context);
    return BlocConsumer<ApiManager,WeatherStates>(
      builder: (BuildContext context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: cubit.getWeatherModel==null?
          Center(child: CircularProgressIndicator(color: Colors.black,),)
              : Container(
               height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors:cubit.getWeatherModel.weatherStateName=='Patchy rain possible'? [Colors.white,Colors.blue.shade300,Colors.blue.shade900]
                    :cubit.getWeatherModel.weatherStateName=='Sunny'?[Colors.white60,Colors.orange]
                    :[Colors.white,Colors.blue]
              )
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: 100,horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cubit.getWeatherModel.name,style: TextStyle(fontSize: 32,color: Colors.white),),
                    SizedBox(height: 5,),
                    Text('Updated on ${cubit.getWeatherModel.date}',style: TextStyle(fontSize: 15,color: Colors.white),),
                    SizedBox(height: 10,),
                    ContainerIconOfWeather(),
                    SizedBox(height: 20,),
                    detailsOfWeather(cubit: cubit),
                    SizedBox(height: 20,),
                    button_Search_again()
                  ],
                ),
              ),
            ),
          ),
        );
      }, listener: (BuildContext context, Object? state) {  },

    );
  }
}




