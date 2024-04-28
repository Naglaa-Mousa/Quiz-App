import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/app_colors.dart';
import 'package:quiz_app/core/utils/app_texts.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    alignment:Alignment.center ,
      decoration:const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight:Radius.circular(30),
        )
      ) ,
      child:const Text(AppTexts.appName,
        style: TextStyle(
          color:Colors.white,
          fontSize:20 ,
          fontWeight: FontWeight.w800,
        ),
      ),
    );

  }
}



