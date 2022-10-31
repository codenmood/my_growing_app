import 'package:flutter/material.dart';
import 'package:growing_plant/plant_screen.dart';
import 'package:growing_plant/utils/color_util.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
          decoration: BoxDecoration(gradient: LinearGradient(
              colors: [
                HexColor("1d1222").withOpacity(0.7),
                HexColor("1d1222").withOpacity(0.5),
                HexColor("1d1222").withOpacity(0.7)
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: const [0.0, 0.5, 1.0],
              tileMode: TileMode.clamp),),
          child: const PlantScreen()),
    );
  }
}
