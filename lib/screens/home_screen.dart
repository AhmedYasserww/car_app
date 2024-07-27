import 'package:car_app/widgets/home_screenWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title:const Text("Car App",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30,color: Colors.white),),),
   body: FirstWidgetView()

    );

  }




}
