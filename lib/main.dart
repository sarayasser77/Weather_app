import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheatherapp/view/screens/splash_screen.dart';
import 'ApiManager/controller/controller.dart';
import 'constant/observ.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer=MyBlocObserver();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>ApiManager())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash()
      ),
    );
  }
}

