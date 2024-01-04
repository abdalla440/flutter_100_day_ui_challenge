import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_challenge/core/utils/helper/app_router.dart';
import 'package:ui_challenge/core/utils/models/challenge_days_model.dart';

import '../../../../../core/utils/helper/color_helper.dart';
import '../../../../../core/utils/helper/style_helper.dart';

class HomePageDaysCard extends StatelessWidget {
  const HomePageDaysCard({super.key, required this.daysModel});

  final ChallengeDaysModel daysModel;

  @override
  Widget build(BuildContext context) {
    double holderHeight = MediaQuery.of(context).size.height / 5;
    double holderWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.cDayOnePage);
        },
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: holderHeight * 0.15,
                ),
                Container(
                  height: holderHeight * 0.66,
                  decoration: const BoxDecoration(
                    color: ChallengeColorHelper.cSecondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: holderHeight * 0.9,
                        ),
                        SizedBox(
                          width: holderWidth * 0.47,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Day  ${daysModel.dayNumber.toString()}',
                                  style: ChallengeStyleHelper.textStyle24w800),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                daysModel.description,
                                style: ChallengeStyleHelper.textStyle14w500,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                // maxLines: 2,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
              child: Container(
                height: holderHeight * 0.65,
                width: holderHeight * 0.65,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(daysModel.imagePath))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
