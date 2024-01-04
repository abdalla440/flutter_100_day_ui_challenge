import 'package:flutter/material.dart';
import '../../../../../consts.dart';
import 'challenge_days_card.dart';

class HomePageBodyWidget extends StatelessWidget {
  const HomePageBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
        itemCount: challengeDaysDataList.length,
        itemBuilder: (context, index) => HomePageDaysCard(
          daysModel: challengeDaysDataList[index]
        ),
      ),
    );
  }
}
