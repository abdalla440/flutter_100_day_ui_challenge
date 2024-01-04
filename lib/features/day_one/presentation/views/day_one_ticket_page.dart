import 'package:flutter/material.dart';

import '../../../../core/utils/helper/color_helper.dart';
import '../../data/models/travel_data_model.dart';
import 'components/day_one_ticket_widget.dart';

class DayOneTicketPage extends StatefulWidget {
  const DayOneTicketPage({super.key, required this.travelDataModel});

  final TravelDataModel travelDataModel;

  @override
  State<DayOneTicketPage> createState() => _DayOneTicketPageState();
}

class _DayOneTicketPageState extends State<DayOneTicketPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double>? scaleAnimation;

  @override
  void initState() {
    super.initState();
    initScaleAnimation(); // Initialize the scale animation
    animationController.forward(); // Start the animation
  }

  void initScaleAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration:
          const Duration(milliseconds: 1500), // Adjust the duration as needed
    );
    scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05, // Adjust the end value for the desired scale
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Air Tickets',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        backgroundColor: ChallengeColorHelper.cPinkColor,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  ChallengeColorHelper.cPinkColor,
                  ChallengeColorHelper.cOrangeColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              return scaleAnimation != null
                  ? ScaleTransition(
                      alignment: Alignment.bottomCenter,
                      scale: scaleAnimation!,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DayOneTicketWidget(
                                  travelDataModel: widget.travelDataModel),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Container(
                                  height: 16,
                                  decoration: BoxDecoration(
                                    color: ChallengeColorHelper.cPinkyWhite
                                        .withOpacity(0.3),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(); // Return an empty container if scaleAnimation is null
            },
          ),
        ],
      ),
    );
  }
}
