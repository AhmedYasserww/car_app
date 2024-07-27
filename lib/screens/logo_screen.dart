import 'package:car_app/data.dart';
import 'package:car_app/widgets/logo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key, });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text("LogoCars",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
        body:GridView.builder(
          itemCount: logo.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        ),
            itemBuilder:(context,i){
          return LogoWidget(image:logo[i].image, name:logo[i].name, id:logo[i].id);
            }
        )

    );
  }
}

