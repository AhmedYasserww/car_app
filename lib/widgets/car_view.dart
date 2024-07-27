import 'package:car_app/data.dart';
import 'package:car_app/models/car_model.dart';
import 'package:flutter/material.dart';
class CarView extends StatelessWidget {
  const CarView({super.key, required this.id, required this.title, required this.image,});
  final String id ;
  final String title;
  final String image ;

  @override
  Widget build(BuildContext context) {

    return
       Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context,"cardetailes",arguments:id);
          },
          child: ClipRRect(
            borderRadius:BorderRadius.circular(20),
            child: Stack(
              alignment:Alignment.bottomCenter ,
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(image))),
                ),
                Container(
                  // alignment: Alignment.center,
                    width: double.infinity,
                    color: Colors.black45,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red[800]),))
              ],
            ),
          ),
        ),

    );
  }
}
