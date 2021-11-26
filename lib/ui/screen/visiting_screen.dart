import 'package:flutter/material.dart';
import 'package:places/constants/colors.dart';
import 'package:places/constants/strings.dart';
import 'package:places/constants/typography.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/widgets/visited_card.dart';
import 'package:places/ui/screen/widgets/wanted_card.dart';

class VisitingScreen extends StatelessWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            preferredSize: Size.fromHeight(52),
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
                    tabs: [
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
            _wantList(),
            _visitedList(),
          ],
        ),
      ),
    );
  }

  Padding _visitedList() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32),
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
