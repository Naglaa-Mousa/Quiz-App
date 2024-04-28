import 'package:flutter/material.dart';
import 'package:quiz_app/features/home/views/widgets/custom_home_body.dart';

import '../../../core/widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Map<key   ,  value>
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight:100 ,
            flexibleSpace:const CustomAppBar() ,
          ),
          body: const CustomHomeBody()
      ),
    );
  }
}
