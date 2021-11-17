import 'package:flutter/material.dart';
import 'package:places/constants/colors.dart';
import 'package:places/constants/typography.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 360.0,
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 36,
                  child: Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Пряности и радости',
                    style: kTitleStyle.copyWith(color: kSecondaryColor),
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Row(
                  children: [
                    Text(
                      'ресторан',
                      style: kSmallBoldStyle.copyWith(color: kSecondaryColor),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Text('закрыто до 09:00',
                        style:
                            kRobotoTextStyle.copyWith(color: kSecondary2Color)),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                    "Пряный вкус радостной жизни вместе с\nшеф-поваром. Изо Дзандзава,"
                    "благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного",
                    textAlign: TextAlign.justify,
                    style: kRobotoTextStyle.copyWith(color: kSecondaryColor)),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  width: double.infinity,
                  height: 48.0,
                  decoration: const BoxDecoration(
                      color: Color(0xFF4CAF50),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Divider(
                  height: 1.0,
                  color: Color.fromRGBO(
                    124,
                    126,
                    146,
                    0.56,
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          height: 40.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          height: 40.0,
                          color: Colors.grey,
                        ),
                      ),
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
}
