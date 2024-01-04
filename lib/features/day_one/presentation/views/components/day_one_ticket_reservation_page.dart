import 'package:flutter/material.dart';

import '../consts.dart';
import 'day_one_travel_card_data_item.dart';

class DayOneTicketReservationPage extends StatelessWidget {
  const DayOneTicketReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: ListView.separated(
          itemBuilder: (context, index) =>
              DayOneTravelCardItem(travelDataModel: travelDataList[index]),
          separatorBuilder: (context, index) => const SizedBox(height: 18.0),
          itemCount: travelDataList.length),
    );
  }
}
