import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:ui_challenge/core/utils/helper/style_helper.dart';

import '../../../../../core/utils/helper/app_router.dart';
import '../../../../../core/utils/helper/color_helper.dart';
import '../../../data/models/travel_data_model.dart';

class DayOneTravelCardItem extends StatelessWidget {
  const DayOneTravelCardItem({super.key, required this.travelDataModel});

  final TravelDataModel travelDataModel;

  // final
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.cDayOneTicketPage, extra: travelDataModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          height: 120.0,
          padding: const EdgeInsets.all(16.0),
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
          child: Row(
            children: [
              DayOneTravelCardCityDataItem(
                  alignment: CrossAxisAlignment.start,
                  travelDataModel: travelDataModel),
              const Spacer(),
              const Icon(FontAwesomeIcons.arrowRightLong,
                  color: ChallengeColorHelper.cPinkyOrangeColor),
              const Spacer(),
              DayOneTravelCardCityDataItem(
                  alignment: CrossAxisAlignment.end,
                  travelDataModel: travelDataModel,),
            ],
          ),
        ),
      ),
    );
  }
}

class DayOneTravelCardCityDataItem extends StatelessWidget {
  const DayOneTravelCardCityDataItem(
      {super.key,
      required this.alignment,
      required this.travelDataModel,
      this.showLastLine = true});

  final CrossAxisAlignment alignment;
  final TravelDataModel travelDataModel;
  final bool showLastLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: alignment,
      children: [
        Text(
          alignment == CrossAxisAlignment.start
              ? travelDataModel.startCityAbbrev
              : travelDataModel.destinationCityAbbrev,
          style: ChallengeStyleHelper.textStyle22CPinkyOrange,
        ),
        Text(
          alignment == CrossAxisAlignment.start
              ? travelDataModel.startCity
              : travelDataModel.destinationCity,
          style: ChallengeStyleHelper.textStyle15CDarkPinkyOrange,
        ),
        showLastLine? Text(
          alignment == CrossAxisAlignment.start
              ? travelDataModel.flightNumber
              : DateFormat.MMMd().format(travelDataModel.date),
          style: ChallengeStyleHelper.textStyle15CDarkPinkyOrange,
        ):const Text(''),
      ],
    );
  }
}
