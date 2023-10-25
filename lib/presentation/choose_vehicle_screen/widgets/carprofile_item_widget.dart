import 'package:flutter/material.dart';
import 'package:swiphr/core/app_export.dart';

// ignore: must_be_immutable
class CarprofileItemWidget extends StatelessWidget {
  final String carName;
  final String carDescription;
  final String carPrice;
  final bool isSelected;
  final Color selectedColor;
  const CarprofileItemWidget({
    Key? key,
    required this.carName,
    required this.carDescription,
    required this.carPrice,
    this.isSelected = false,
    this.selectedColor = const Color(0xFF8F00FF),
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? const Color(0xFF8F00FF) : Colors.white,
      child: SizedBox(
        height: 64.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: AppDecoration.fillGray,
                child: CustomImageView(
                  svgPath: ImageConstant.imgVector,
                  height: 63.v,
                  width: 374.h,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(37.h, 14.v, 37.h, 7.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          carName,
                          style: isSelected
                              ? theme.textTheme.titleSmall ??
                                  const TextStyle() // Handle null
                              : theme.textTheme.titleSmall ?? const TextStyle(),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          carDescription,
                          style: isSelected
                              ? theme.textTheme.bodySmall ??
                                  const TextStyle() // Handle null
                              : theme.textTheme.bodySmall ?? const TextStyle(),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        carPrice,
                        style: isSelected
                            ? theme.textTheme.bodyLarge ??
                                const TextStyle() // Handle null
                            : theme.textTheme.bodyLarge ??
                                const TextStyle(), // Handle null
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
