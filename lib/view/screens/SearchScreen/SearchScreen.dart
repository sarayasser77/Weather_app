import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheatherapp/ApiManager/weatherStates/weatherStates.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../../ApiManager/controller/controller.dart';
import '../../widgets/customClipperContainer.dart';
import '../../widgets/customclipper.dart';
import '../../widgets/searchField.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    ApiManager cubit =BlocProvider.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<ApiManager,WeatherStates>(
        builder: (BuildContext context, state) {
         return   Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xffF6F1F1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipPath(
                  clipper: CustomClipperPath(),
                  child: const custoClipperContainer(),
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child:Lottie.asset('images/weather.json') ,
                ),
                    const SizedBox(height: 10,),
                  const Padding(
                     padding: EdgeInsets.all(8.0),
                    child:   SearchField(),
),
                 const SizedBox(height: 20,),
                 SizedBox(
           width: 250.0,
           child: DefaultTextStyle(
             textAlign: TextAlign.center,
             style: const TextStyle(
               fontSize: 25.0,
               fontFamily: 'Bobbers',
               color: Color(0xff146C94)
             ),
             child: AnimatedTextKit(
               totalRepeatCount: 1,
               animatedTexts: [
                 TyperAnimatedText('Get the weather of your city'),
                 TyperAnimatedText('    Search here to get it '),
               ],
               onTap: () {
                 if (kDebugMode) {
                   print("Tap Event");
                 }
               },
             ),
           ),
         )


              ],
            ),
          );
        },
        listener: (BuildContext context, Object? state) {  },
      ),
    );
  }


}

