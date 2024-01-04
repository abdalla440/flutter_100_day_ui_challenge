import 'package:ui_challenge/core/utils/helper/app_router.dart';
import 'package:ui_challenge/core/utils/helper/assets_helper.dart';

import 'core/utils/models/challenge_days_model.dart';

List challengeDaysDataList = [
  ChallengeDaysModel(
     route: AppRouter.cDayOnePage,
    imagePath: ChallengeAssetsHelper.dayOneImage,
    dayNumber: 1,
    description: 'Gradiant Background Ticket With Data view And BarCode',
  ),
];
