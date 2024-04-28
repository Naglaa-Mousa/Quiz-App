import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/app_colors.dart';


class CustomHomeDivider extends StatelessWidget {
  const CustomHomeDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.primaryColor,
      thickness:1 ,
      indent:45 ,
      endIndent:45 ,
    );
  }
}
