import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:wheatherapp/ApiManager/WeatherCubit/weatherCubit.dart';
import 'package:wheatherapp/ApiManager/weatherStates/weatherStates.dart';

import '../../model/weatherModel.dart';
class ApiManager extends Cubit<WeatherStates> {
  ApiManager():super(InitialState());

  WeatherModel    ? _weatherModel  ;
  set setWeatherModel(WeatherModel weatherModel   ){
    _weatherModel = weatherModel;
emit(GetWeatherDataSuccessState());

  }
  get  getWeatherModel{
    return _weatherModel;
  }

}