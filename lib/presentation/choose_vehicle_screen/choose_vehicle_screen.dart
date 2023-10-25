import 'package:flutter/material.dart';
import 'package:swiphr/core/app_export.dart';
import 'package:swiphr/presentation/rate_your_trip_screen/rate_your_trip_screen.dart';
import 'package:swiphr/widgets/app_bar/appbar_iconbutton.dart';
import 'package:swiphr/widgets/app_bar/appbar_image.dart';
import 'package:swiphr/widgets/app_bar/appbar_image_1.dart';
import 'package:swiphr/widgets/app_bar/custom_app_bar.dart';
import 'package:swiphr/widgets/custom_floating_button.dart';
import 'package:swiphr/widgets/custom_icon_button.dart';
import 'package:swiphr/widgets/custom_outlined_button.dart';
import 'package:swiphr/widgets/custom_radio_button.dart';

import '../choose_vehicle_screen/widgets/carprofile_item_widget.dart';

class ChooseVehicleScreen extends StatefulWidget {
  const ChooseVehicleScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<ChooseVehicleScreen> createState() => _ChooseVehicleScreenState();
}

class _ChooseVehicleScreenState extends State<ChooseVehicleScreen> {
  String radioGroup = "";
  int? selectedIndex;

  void selectCar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 487.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgWhatsappimage20220514,
                            height: 487.v,
                            width: 375.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomAppBar(
                                  leadingWidth: 76.h,
                                  leading: AppbarIconbutton(
                                    svgPath: ImageConstant.imgMenu,
                                    margin: EdgeInsets.only(
                                      left: 36.h,
                                      top: 43.v,
                                      bottom: 15.v,
                                    ),
                                  ),
                                  centerTitle: true,
                                  title: AppbarImage(
                                    imagePath: ImageConstant.imgTh2,
                                    margin: EdgeInsets.only(
                                      top: 48.v,
                                      bottom: 20.v,
                                    ),
                                  ),
                                  actions: [
                                    AppbarImage1(
                                      imagePath: ImageConstant.imgProfile,
                                      margin: EdgeInsets.fromLTRB(
                                          37.h, 43.v, 37.h, 15.v),
                                    ),
                                  ],
                                  styleType: Style
                                      .bgGradientnameonErrornameonErroropacity0,
                                ),
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: const EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20,
                                  ),
                                  child: Container(
                                    height: 83.v,
                                    width: 302.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 11.v,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                            width: 201.h,
                                            child: const Divider(),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: CustomRadioButton(
                                            text: "lbl_skate_park".tr,
                                            value: "lbl_skate_park".tr,
                                            groupValue: radioGroup,
                                            onChange: (value) {
                                              radioGroup = value;
                                            },
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 2.h),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  height: 13.v,
                                                  width: 10.h,
                                                  margin: EdgeInsets.only(
                                                    top: 2.v,
                                                    bottom: 4.v,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 13.h),
                                                  child: Text(
                                                    "lbl_home".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumGray700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomOutlinedButton(
                                          width: 68.h,
                                          text: "lbl_add".tr,
                                          margin: EdgeInsets.only(right: 1.h),
                                          leftIcon: Container(
                                            margin: EdgeInsets.only(right: 3.h),
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgPlus,
                                            ),
                                          ),
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 207.v,
                                    width: 267.h,
                                    margin: EdgeInsets.only(
                                      top: 30.v,
                                      right: 11.h,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgVector26,
                                          height: 162.v,
                                          width: 228.h,
                                          alignment: Alignment.bottomCenter,
                                          margin: EdgeInsets.only(bottom: 8.v),
                                        ),
                                        CustomIconButton(
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                          padding: EdgeInsets.all(3.h),
                                          decoration:
                                              IconButtonStyleHelper.fillOnError,
                                          alignment: Alignment.bottomLeft,
                                          child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch,
                                          ),
                                        ),
                                        CustomIconButton(
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                          margin: EdgeInsets.only(
                                            top: 23.v,
                                            right: 10.h,
                                          ),
                                          padding: EdgeInsets.all(3.h),
                                          decoration:
                                              IconButtonStyleHelper.fillOnError,
                                          alignment: Alignment.topRight,
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSearchSecondarycontainer,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgLocationPrimarycontainer,
                                          height: 28.v,
                                          width: 21.h,
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(
                                            left: 3.h,
                                            bottom: 14.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgLocationPink500,
                                          height: 49.v,
                                          width: 48.h,
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 373.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle11,
                            height: 372.v,
                            width: 375.h,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgClock,
                            height: 44.adaptSize,
                            width: 44.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 8.v,
                              right: 21.h,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 26.v),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 36.h),
                                    child: Text(
                                      "msg_choose_your_ride".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      final carData = [
                                        {
                                          "name": "Toyota Camry",
                                          "description": "2-3 person",
                                          "price": "\$7.00",
                                        },
                                        {
                                          "name": "Lexus R700",
                                          "description": "2-3 person",
                                          "price": "\$9.00",
                                        },
                                        {
                                          "name": "Mercedes W90",
                                          "description": "2-3 person",
                                          "price": "\$10.00",
                                        },
                                      ];
                                      final car = carData[index];
                                      return GestureDetector(
                                        onTap: () {
                                          selectCar(index);
                                        },
                                        child: Container(
                                          color: index == selectedIndex
                                              ? const Color(0xFF8F00FF)
                                              : Colors.white,
                                          child: CarprofileItemWidget(
                                            carName: car["name"] ?? "",
                                            carDescription:
                                                car["description"] ?? "",
                                            carPrice: car["price"] ?? "",
                                            isSelected: index == selectedIndex,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 1.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 36.h,
                                vertical: 14.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 18.v,
                                          bottom: 6.v,
                                        ),
                                        child: Text(
                                          "lbl_cash".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgIconback,
                                        height: 5.v,
                                        width: 8.h,
                                        margin: EdgeInsets.only(
                                          left: 7.h,
                                          top: 16.v,
                                          bottom: 14.v,
                                        ),
                                      ),
                                      const Spacer(),
                                      CustomOutlinedButton(
                                        width: 119.h,
                                        text: "lbl_promo_code".tr,
                                        leftIcon: Container(
                                          margin: EdgeInsets.only(right: 6.h),
                                          child: CustomImageView(
                                            svgPath: ImageConstant.imgTicket,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 11.v),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const RateYourTripScreen()));
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.black),
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .circleBorder32, // Adjust this to your border style
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "lbl_book_this_car".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnErrorMedium,
                                        ),
                                        Text(
                                          "lbl_9_00".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnErrorMedium,
                                        ),
                                        CustomFloatingButton(
                                          height: 44,
                                          width: 44,
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgIconbackPrimary,
                                            height: 22.0.v,
                                            width: 22.0.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(height: 11.v),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
