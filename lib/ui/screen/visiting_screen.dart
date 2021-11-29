import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/constants/colors.dart';
import 'package:places/constants/icons.dart';
import 'package:places/constants/strings.dart';
import 'package:places/constants/typography.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/widgets/visited_card.dart';
import 'package:places/ui/screen/widgets/wanted_card.dart';

import 'widgets/bottom_bar.dart';

class VisitingScreen extends StatelessWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            VisitingListStrings.appBarTitle,
            style: AppTextStyles.subtitleStyle
                .copyWith(color: AppColors.mainColor),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(52),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
              child: Stack(
                children: [
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(
                        40.0,
                      ),
                    ),
                  ),
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        40.0,
                      ),
                      color: AppColors.mainColor,
                    ),
                    labelColor: Colors.white,
                    labelStyle: AppTextStyles.smallBoldStyle,
                    unselectedLabelColor: AppColors.inactiveColor,
                    tabs: const [
                      Tab(
                        text: VisitingListStrings.wantedTabTitle,
                      ),
                      Tab(
                        text: VisitingListStrings.visitedTabTitle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // _wantList(),
            _emptyList(size),
            _visitedList(),
          ],
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }

  Column _emptyList(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(AppIcons.cardIcon),
        const SizedBox(
          height: 24.0,
        ),
        Text(
          VisitingListStrings.emptyTabViewTitle,
          style: AppTextStyles.subtitleStyle
              .copyWith(color: AppColors.inactiveColor),
        ),
        const SizedBox(
          height: 8.0,
        ),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: size.width * 0.6),
          child: Text(
            VisitingListStrings.emptyTabViewSubtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.robotoTextStyle
                .copyWith(color: AppColors.inactiveColor),
          ),
        ),
      ],
    );
  }

  Padding _visitedList() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          VisitedCard(
            sight: mocks[1],
          )
        ],
      ),
    );
  }

  Padding _wantList() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          WantedCard(
              sight: mocks[0], planString: 'Запланировано на 12 окт. 2020')
        ],
      ),
    );
  }
}
