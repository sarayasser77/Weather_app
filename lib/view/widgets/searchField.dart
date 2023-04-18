import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ApiManager/WeatherCubit/weatherCubit.dart';

import '../../ApiManager/controller/controller.dart';
import '../screens/Weatherpage.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    ApiManager cubit =BlocProvider.of(context);
    return TextFormField(
      onFieldSubmitted: (value){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherView()));
      },
      onChanged: (value)async{
        WeatherServices weatherdata=WeatherServices();
        cubit.setWeatherModel= await weatherdata.getWeatherData(cityName: value);
        setState(() {

        }
        );

      },
      style: TextStyle(color:Color(0xff146C94)),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),

              borderSide: BorderSide(color: Color(0xff146C94))
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xff146C94))
          ),
          contentPadding: EdgeInsets.all(20),
          labelText: 'search',
          labelStyle: TextStyle(color: Color(0xff146C94)),
          hintText: 'search',
          hintStyle: TextStyle(color: Color(0xff146C94)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
    );
  }
}
