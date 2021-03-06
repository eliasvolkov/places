import 'package:flutter/material.dart';
import 'package:places/constants/colors.dart';
import 'package:places/constants/strings.dart';
import 'package:places/constants/typography.dart';
import 'package:places/ui/screen/widgets/sight_card.dart';

import '../../mocks.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(112.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              SightListStrings.appBarTitle,
              style: AppTextStyles.largeTitleStyle
                  .copyWith(color: AppColors.secondaryColor),
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SightCard(sight: mocks[0]),
          const SizedBox(
            height: 16.0,
          ),
          SightCard(sight: mocks[1])
        ],
      ),
    );
  }
}
