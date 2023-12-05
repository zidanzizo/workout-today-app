import 'package:flutter/material.dart';
import 'package:workout_today_app/presentation/widgets/daily_stat_indicator_item.dart';
import 'package:workout_today_app/presentation/widgets/home_activities_list_item.dart';
import 'package:workout_today_app/presentation/widgets/home_modal_bottom_item.dart';
import 'package:workout_today_app/presentation/widgets/home_trend_list_item.dart';
import 'package:workout_today_app/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          profileSection(context),
          searchSection(),
          statisticSection(context),
          latestActivitiesSection(),
          trendSection(),
        ],
      ),
    );
  }

  Container trendSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trend This Week',
            style: titleTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeTrendListItem(
                  imageUrl: 'assets/img_trend1.png',
                  title: 'Calistech',
                  content: '3 hrs • Intermediate',
                  isNew: true,
                ),
                HomeTrendListItem(
                  imageUrl: 'assets/img_trend2.png',
                  title: 'Bike Cycling',
                  content: '45 mins • Beginner',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget latestActivitiesSection() {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Activities',
            style: titleTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Column(
            children: [
              HomeActivitiesListItem(
                imageUrl: 'assets/img_activity1.png',
                name: 'Yoga Tathi',
                sessionFinished: 15,
                sessionFinishedProgressCount: 4,
              ),
              HomeActivitiesListItem(
                imageUrl: 'assets/img_activity2.png',
                name: 'Kick Boxing',
                sessionFinished: 2,
                sessionFinishedProgressCount: 2,
              ),
            ],
          )
        ],
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
                      totalValue1: 75,
                      totalValue2: 60,
                      percentage1: 0.1,
                      percentage2: 0.85,
                      title: 'Tue',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 90,
                      totalValue2: 60,
                      percentage1: 0.3,
                      percentage2: 0.7,
                      title: 'Wed',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 90,
                      totalValue2: 80,
                      percentage1: 0.9,
                      percentage2: 0.9,
                      title: 'Thu',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 40,
                      totalValue2: 80,
                      percentage1: 0.8,
                      percentage2: 0.2,
                      title: 'Fri',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 90,
                      totalValue2: 80,
                      percentage1: 0.6,
                      percentage2: 0.5,
                      title: 'Sat',
                    ),
                    DailyStatIndicatorItem(
                      totalValue1: 90,
                      totalValue2: 70,
                      percentage1: 0.4,
                      percentage2: 0.7,
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
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
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

  Widget profileSection(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: whiteColor,
          builder: (context) => Container(
            height: 430,
            padding: const EdgeInsets.fromLTRB(defaultMargin, 37, defaultMargin, 30),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(50),
              ),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Text(
                  'Set Your Goal',
                  style: titleTextStyle.copyWith(fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Our A.I will help you to get\nthe best result ever',
                  style: contentTextStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const HomeModalBottomItem(
                  title: 'Lose Body Fat',
                ),
                const HomeModalBottomItem(
                  title: 'Marathon 10K',
                  isSelected: true,
                ),
                const HomeModalBottomItem(
                  title: 'Muscle Engage',
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
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
      ),
    );
  }
}
