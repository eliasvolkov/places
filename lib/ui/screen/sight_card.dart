import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight sight;
  const SightCard({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          // width: double.infinity,
          // height: 188.0,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              color: Color(0xFFF5F5F5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Хотел в Expanded обернуть, но по макету высота верхнего и нижнего блока не равны
              Stack(
                children: [
                  Positioned(
                      child: Container(
                          width: double.infinity,
                          height: 96.0,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0)),
                              color: Colors.green))),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          sight.type,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700),
                        ),
                        SvgPicture.asset('assets/icons/heart.svg')
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 296),
                      child: Text(
                        sight.name,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color(0xFF3B3E5B),
                            fontFamily: 'Roboto',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      sight.type,
                      style: const TextStyle(
                        color: Color(0xFF7C7E92),
                        fontFamily: 'Roboto',
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
