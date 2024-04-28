import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/app_images.dart';
//import 'package:animate_do/animate_do.dart';



class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override




  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(APPImages.up,
              height: 252,
              width:265,
            ),
          ),
        const Spacer(),

          Center(
         //child:JelloIn(
         child: Image.asset(APPImages.logo,
           height: 59,
           width: 231,
         )
         ),
       const Spacer(),

      Align(
        alignment: Alignment.bottomRight,
        child: Image.asset(APPImages.down,
        height: 252,
        width: 265,
        ),
      ),
        ],
      ),
    );
  }
}
