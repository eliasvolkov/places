import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/constants/icons.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 12.0,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.list),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.map),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.heartFull),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.settings),
          label: '',
        ),
      ],
    );
  }
}
