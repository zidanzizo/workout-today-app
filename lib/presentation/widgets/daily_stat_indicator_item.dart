import 'package:flutter/material.dart';
import 'package:workout_today_app/shared/theme.dart';

class DailyStatIndicatorItem extends StatelessWidget {
  final String title;
  final double totalValue1;
  final double percentage1;
  final double totalValue2;
  final double percentage2;
  const DailyStatIndicatorItem({
    super.key,
    required this.title,
    required this.totalValue1,
    required this.percentage1,
    required this.totalValue2,
    required this.percentage2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: totalValue1,
              width: 8,
              child: RotatedBox(
                quarterTurns: -1,
                child: LinearProgressIndicator(
                  backgroundColor: greyColor,
                  valueColor: AlwaysStoppedAnimation(purpleColor),
                  value: percentage1,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            SizedBox(
              height: totalValue2,
              width: 8,
              child: RotatedBox(
                quarterTurns: -1,
                child: LinearProgressIndicator(
                  backgroundColor: greyColor,
                  valueColor: AlwaysStoppedAnimation(primaryColor),
                  value: percentage2,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: contentTextStyle,
        ),
      ],
    );
  }
}
