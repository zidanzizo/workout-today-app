import 'package:flutter/material.dart';
import 'package:workout_today_app/presentation/widgets/daily_stat_indicator_item.dart';
import 'package:workout_today_app/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            profileSection(),
            searchSection(),
            statisticSection(context),
          ],
        ),
      ),
    );
  }

  Widget statisticSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Stats',
            style: titleTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width - (2 * defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    statTitleItem('Strength', purpleColor),
                    statTitleItem('Cardio', primaryColor),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DailyStatIndicatorItem(
                      totalValue1: 50,
                      totalValue2: 90,
                      percentage1: 1,
                      percentage2: 0.2,
                      title: 'Mon',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 50,
                      totalValue2: 90,
                      percentage1: 1,
                      percentage2: 0.2,
                      title: 'Tue',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 50,
                      totalValue2: 90,
                      percentage1: 1,
                      percentage2: 0.2,
                      title: 'Wed',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 50,
                      totalValue2: 90,
                      percentage1: 1,
                      percentage2: 0.2,
                      title: 'Thu',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 50,
                      totalValue2: 90,
                      percentage1: 1,
                      percentage2: 0.2,
                      title: 'Fri',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 50,
                      totalValue2: 90,
                      percentage1: 1,
                      percentage2: 0.2,
                      title: 'Sat',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 50,
                      totalValue2: 90,
                      percentage1: 1,
                      percentage2: 0.2,
                      title: 'Sun',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget statTitleItem(String title, Color color) {
    return Row(
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: contentTextStyle.copyWith(
            fontSize: 8,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }

  Widget searchSection() {
    return Container(
      height: 45,
      width: 280,
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorHeight: 14,
              style: contentTextStyle.copyWith(color: blackColor),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
                hintText: 'Search workout for today',
                hintStyle: contentTextStyle,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(3),
            height: 39,
            width: 39,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Center(
                child: Image.asset(
                  'assets/icon_search.png',
                  color: whiteColor,
                  width: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileSection() {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // color: greyColor,
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/img_profile.png',
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  value: 0.26,
                  backgroundColor: greyColor,
                  valueColor: AlwaysStoppedAnimation(primaryColor),
                  strokeWidth: 8,
                  strokeCap: StrokeCap.round,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Hi, Maynna',
            style: titleTextStyle,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Level 28',
            style: contentTextStyle,
          ),
        ],
      ),
    );
  }
}
