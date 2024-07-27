import 'package:flutter/material.dart';
class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
    required this.image,
    required this.name,
    required this.id
  });

  final String image;
  final String name;
  final String id ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: (){
         Navigator.of(context).pushNamed("carview",arguments: {
           "id":id,
           "name":name,
           "imageUrl":image

         });
        },
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage(image),fit: BoxFit.fill) ),
            ),
            Container(
                alignment: Alignment.center,
                height: 30,
                width: double.infinity,
                color:Colors.grey,child: Text(name,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25,color: Colors.red),))
          ],
        ),
      ),
    );
  }
}
