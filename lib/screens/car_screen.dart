import 'package:car_app/data.dart';
import 'package:car_app/models/car_model.dart';
import 'package:car_app/widgets/car_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CarListView extends StatelessWidget {
  const CarListView({super.key});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    String name = data["name"];
    String id = data["id"];

    List <CarModel> datafilter =cars.where((element){
      return element.carNumber.contains(id);
    }).toList();
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: Text(name,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
     ),
      body:ListView.builder(
        itemCount: datafilter.length,
          itemBuilder:(context,i){
        return CarView(id:"${datafilter[i].id}", title:"${datafilter[i].title}", image:"${datafilter[i].imageUrl}");
      })
    );
  }
}
