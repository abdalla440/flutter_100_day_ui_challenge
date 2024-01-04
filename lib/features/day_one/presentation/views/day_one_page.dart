import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenge/core/utils/helper/assets_helper.dart';
import 'package:ui_challenge/core/utils/helper/color_helper.dart';

import 'components/day_one_custom_tab_bar.dart';
import 'components/day_one_page_body_widget.dart';

class DayOnePage extends StatelessWidget {
  const DayOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 3,
        child: Scaffold(

          body: Stack(
            children: [
              DayOnePageBodyWidget(),
              DayOneCustomTabBar()
            ],
          ),
        )
    );
  }
}




