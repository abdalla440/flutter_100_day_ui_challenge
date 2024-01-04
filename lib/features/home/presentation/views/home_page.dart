import 'package:flutter/material.dart';
import 'package:ui_challenge/core/utils/helper/color_helper.dart';

import 'components/home_page_body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          '100 Day Flutter UI',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 24
          ),
        ),
      ),
      body: const HomePageBodyWidget(),
      backgroundColor:  ChallengeColorHelper.cPrimaryColor,
      // body:   ,
    );
  }
}
