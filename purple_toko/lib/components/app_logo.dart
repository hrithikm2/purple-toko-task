import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/app_colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Center(
                  child: Container(
                    height: 70,
                    width: 70,
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
                height: 100,
                width: 100,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 10,
                      width: 40,
                      color: AppColors.secondaryColor,
                    ),
                    SizedBox(
                      width: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: AppColors.secondaryColor,
                            height: 30,
                            width: 10,
                          ),
                          Container(
                            color: AppColors.secondaryColor,
                            height: 30,
                            width: 10,
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
        ]).makeCentered()
      ],
    );
  }
}
