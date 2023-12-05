import 'package:flutter/material.dart';
import 'package:workout_today_app/shared/theme.dart';

class HomeTrendListItem extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final bool isNew;
  const HomeTrendListItem({
    super.key,
    required this.title,
    required this.content,
    required this.imageUrl,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 190,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 121,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Visibility(
              visible: isNew,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 16,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'NEW',
                      style: whiteTextStyle,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: subtitleTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    content,
                    style: contentTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
