import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/app_colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key, required this.isSmall}) : super(key: key);
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: Container(
                height: isSmall ? 50 : 100,
                width: isSmall ? 50 : 100,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: isSmall ? 50 : 100,
                width: isSmall ? 50 : 100,
                child: Center(
                  child: Container(
                    height: isSmall ? 35 : 75,
                    width: isSmall ? 35 : 75,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: isSmall ? 50 : 100,
                width: isSmall ? 50 : 100,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: isSmall ? 5 : 10,
                      width: isSmall ? 15 : 40,
                      color: AppColors.secondaryColor,
                    ),
                    SizedBox(
                      width: isSmall ? 15 : 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: AppColors.secondaryColor,
                            height: isSmall ? 15 : 30,
                            width: isSmall ? 5 : 10,
                          ),
                          Container(
                            color: AppColors.secondaryColor,
                            height: isSmall ? 15 : 30,
                            width: isSmall ? 5 : 10,
                          )
                        ],
                      ),
                    )
                  ],
                )),
              ),
            ),
          ],
        ),
        Visibility(
          visible: !isSmall,
          child: Column(
            children: [
              16.heightBox,
              "P"
                  .richText
                  .color(AppColors.secondaryColor)
                  .size(48)
                  .bold
                  .withTextSpanChildren([
                const TextSpan(
                    text: 'urple',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.normal)),
                const TextSpan(
                  text: 'T',
                ),
                const TextSpan(
                    text: 'oko',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.normal)),
              ]).makeCentered(),
            ],
          ),
        )
      ],
    );
  }
}
