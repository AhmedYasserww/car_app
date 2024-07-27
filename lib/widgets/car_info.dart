import 'package:car_app/data.dart';
import 'package:car_app/models/car_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CarInformation extends StatelessWidget {
  const CarInformation({super.key});

  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context)!.settings.arguments as String;
    CarModel car = cars.firstWhere((element) {
      return element.id.contains(id);
    });
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(car.title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
      body: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  
                  height:200,
                  width:300,
                  decoration: BoxDecoration(image: DecorationImage(image:AssetImage(car.imageUrl),fit: BoxFit.fill, )),),
              ),

              Text("Name : ${car.title}",style: TextStyle(fontSize: 35,color: Colors.red),),
              Text("Model :${car.model}",style: TextStyle(fontSize: 28),),
             Text("Price : ${car.salary}",style: TextStyle(fontSize: 32,color: Colors.black),),
             Text("The Description :${car.description}",style: TextStyle(fontSize: 25),)
             // Text("Model :"${car.model}")
          ],),
        ),
      ),
    );
  }
}
