import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/helper/assets_helper.dart';
import '../../../../../core/utils/helper/color_helper.dart';

class DayOneCustomAppBar extends StatelessWidget {
  const DayOneCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 120,
      flexibleSpace: Container(
        height: 150,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[ChallengeColorHelper.cPinkColor, ChallengeColorHelper.cOrangeColor]),
        ),
      ),
      title: const Text('11 Jul 2016',
          style: TextStyle(
            color: Colors.white70,
          )),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {},
          icon: Image.asset(ChallengeAssetsHelper.dayOneMenuImage)),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today_outlined,
              color: Colors.white70,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white70,
            )),
      ],
    );
  }
}
