import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:wheatherapp/ApiManager/weatherStates/weatherStates.dart';
import 'package:wheatherapp/model/weatherModel.dart';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';
class WeatherServices {
  String baseUrl='http://api.weatherapi.com';
  String apiKey='449e8fd2130444de915125148231404';
   getWeatherData({required String cityName}) async{
  Response response =await http.get(Uri.parse('$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=4&aqi=no&alerts=no'));

  Map<String,dynamic> data = jsonDecode(response.body);
  WeatherModel weather = WeatherModel.fromjson(data);
  return weather;
  }
}