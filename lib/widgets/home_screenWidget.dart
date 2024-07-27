import 'package:flutter/material.dart';
class FirstWidgetView extends StatelessWidget {
  const FirstWidgetView ({super.key});

  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image:AssetImage("images/logo/alllogo.webp")),
            const SizedBox(height: 50,),
            const Text("Welcome to this App ",style: TextStyle(fontSize: 30),),
            const Text("This App is show the information about Cars",style: TextStyle(fontSize: 18),),
            const Text("if you want to show the cars press Continue",style: TextStyle(fontSize: 18),),
            const SizedBox(height: 50,),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed("logoscreen");
            }, child:const Text("continue",style: TextStyle(fontSize: 32),))

          ],),
      ),
    );
  }
}
