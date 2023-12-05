import 'package:flutter/material.dart';
import 'package:workout_today_app/shared/theme.dart';

class HomeModalBottomItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  const HomeModalBottomItem({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: const EdgeInsets.all(11),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? primaryColor : contentGreyColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? primaryColor : greyColor,
            ),
            child: Center(
              child: Image.asset(
                'assets/icon_award.png',
                color: isSelected ? whiteColor : blackColor,
                width: 18,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              title,
              style: subtitleTextStyle.copyWith(
                fontWeight: isSelected ? semiBold : null,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Visibility(
            visible: isSelected,
            child: Icon(
              Icons.check_circle,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
