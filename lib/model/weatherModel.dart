
import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherModel{
 String?name;
String? date;
double? temp;
double?maxTemp;
double?minTemp;
String? weatherStateName;
String? icon;
int? daily_chance_of_rain;
double?avghumidity;

WeatherModel.fromjson(dynamic jsonData){

 var data=jsonData['forecast']['forecastday'][0]['day'];
 date =jsonData['location']['localtime'];
 name=jsonData['location']['name'];
 temp= data['avgtemp_c'] ;
 maxTemp=data['maxtemp_c'];
 minTemp=data['mintemp_c'];
 weatherStateName=data['condition']['text'];
 icon=data['condition']['icon'];
 daily_chance_of_rain=data['daily_chance_of_rain'];
 avghumidity=data['avghumidity'];
}

}