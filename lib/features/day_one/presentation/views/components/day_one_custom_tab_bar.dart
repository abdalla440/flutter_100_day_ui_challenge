import 'package:flutter/material.dart';
import 'package:ui_challenge/core/utils/helper/assets_helper.dart';

import '../../../../../core/utils/helper/color_helper.dart';

class DayOneCustomTabBar extends StatelessWidget {
  const DayOneCustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    double parentHeight = MediaQuery.of(context).size.height;

    return Container(
      height: parentHeight * 0.1,
      margin:
          EdgeInsets.only(top: parentHeight * 0.14, left: 16.0, right: 16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              color: ChallengeColorHelper.cPinkColor.withOpacity(0.1),
              blurRadius: 16,
              blurStyle: BlurStyle.solid,
              // offset: Offset(-1, 5)
            )
          ]),
      child:  TabBar(
          dividerColor: Colors.transparent,
          labelColor: ChallengeColorHelper.cPinkyOrangeColor,
          indicatorColor: ChallengeColorHelper.cOrangeColor,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 16.0),
          indicatorWeight: 3,
          tabs: [
        DayOneCustomTab(icon: Icons.train, text: 'Train',),
        DayOneCustomTab(icon:ImageIcon(AssetImage(ChallengeAssetsHelper.dayOnePlaneImage),size: 50.0,) ,text: 'AirPlane',),
        DayOneCustomTab(icon: Icons.directions_bus, text: 'Bus',),

      ]),
    );
  }
}

class DayOneCustomTab extends StatelessWidget {
  const DayOneCustomTab({super.key, required this.icon, required this.text});
  final dynamic icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(

        icon:icon.runtimeType == IconData ? Icon(
          icon,
          size: 40,
        ): icon,
        text: text,
        iconMargin: EdgeInsets.zero);
  }
}
