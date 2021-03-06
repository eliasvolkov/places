import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/constants/colors.dart';
import 'package:places/constants/icons.dart';
import 'package:places/constants/typography.dart';
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
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16.0)),
                      child: Image.network(
                        sight.url,
                        fit: BoxFit.cover,
                        color: const Color.fromRGBO(0, 0, 0, 0.2),
                        colorBlendMode: BlendMode.darken,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;

                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      (loadingProgress.expectedTotalBytes
                                          as num)
                                  : null,
                            ),
                          );
                        },
                      ),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(sight.type,
                            style: AppTextStyles.smallBoldStyle
                                .copyWith(color: Colors.white)),
                        SvgPicture.asset(AppIcons.heartIcon)
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
                      constraints: const BoxConstraints.tightFor(width: 296),
                      child: Text(
                        sight.name,
                        textAlign: TextAlign.left,
                        style: AppTextStyles.textStyle
                            .copyWith(color: AppColors.mainColor),
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(sight.type,
                        style: AppTextStyles.robotoTextStyle
                            .copyWith(color: AppColors.secondary2Color))
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
