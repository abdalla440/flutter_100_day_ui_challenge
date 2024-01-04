import 'package:flutter/material.dart';
import 'package:ui_challenge/features/day_one/presentation/views/components/day_one_ticket_reservation_page.dart';
import 'day_one_custom_app_bar.dart';

class DayOnePageBodyWidget extends StatelessWidget {
  const DayOnePageBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double parentHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const DayOneCustomAppBar(),
        Expanded(
          child: Container(
            color: const Color(0xffFFEBF2),
            child: const TabBarView(
              children: [
                DayOneTicketReservationPage(),
                DayOneTicketReservationPage(),
                DayOneTicketReservationPage(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

