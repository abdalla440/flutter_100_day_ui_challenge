import 'package:go_router/go_router.dart';
import 'package:ui_challenge/features/day_one/data/models/travel_data_model.dart';
import '../../../features/day_one/presentation/views/day_one_page.dart';
import '../../../features/day_one/presentation/views/day_one_ticket_page.dart';
import '../../../features/home/presentation/views/home_page.dart';

abstract class AppRouter {
  static const cDayOnePage = '/DayOnePage';
  static const cDayOneTicketPage = '/DayOneTicketPage';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: cDayOnePage,
      builder: (context, state) => const DayOnePage(),
    ),
    GoRoute(
      path: '/DayOneTicketPage',
      builder: (context, state) =>
          DayOneTicketPage(travelDataModel: state.extra as TravelDataModel),
    ),
  ]);
}
