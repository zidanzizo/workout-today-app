import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:workout_today_app/shared/theme.dart';

class HomeActivitiesListItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int sessionFinished;
  final int sessionFinishedProgressCount;

  const HomeActivitiesListItem({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.sessionFinished,
    required this.sessionFinishedProgressCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: whiteColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              imageUrl,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: subtitleTextStyle,
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      '$sessionFinished of 30 ',
                      style: orangeTextStyle,
                    ),
                    Text(
                      'session finished',
                      style: contentTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          CircularStepProgressIndicator(
            totalSteps: 8,
            height: 30,
            width: 30,
            currentStep: sessionFinishedProgressCount,
            selectedColor: primaryColor,
            unselectedColor: greyColor,
            stepSize: 3,
            padding: 0.4,
          ),
        ],
      ),
    );
  }
}
