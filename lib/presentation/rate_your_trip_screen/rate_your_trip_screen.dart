import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:swiphr/core/app_export.dart';
import 'package:swiphr/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:swiphr/widgets/app_bar/appbar_title.dart';
import 'package:swiphr/widgets/app_bar/custom_app_bar.dart';
import 'package:swiphr/widgets/custom_elevated_button.dart';
import 'package:swiphr/widgets/custom_icon_button.dart';
import 'package:swiphr/widgets/custom_radio_button.dart';
import 'package:swiphr/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RateYourTripScreen extends StatefulWidget {
  const RateYourTripScreen({Key? key}) : super(key: key);

  @override
  State<RateYourTripScreen> createState() => _RateYourTripScreenState();
}

class _RateYourTripScreenState extends State<RateYourTripScreen> {
  TextEditingController feedbackoneController = TextEditingController();

  String radioGroup = "";

  double rating = 0;

  Widget buildRatingValue(double rating) {
    if (rating >= 3) {
      return Text("Rating: $rating", style: theme.textTheme.titleMedium);
    } else {
      return const SizedBox(); // Hide the rating value when it's less than 3
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: CustomAppBar(
                height: 79.v,
                leadingWidth: 76.h,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgClose,
                    margin: EdgeInsets.only(left: 36.h),
                    onTap: () {
                      onTapCloseone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_rate_your_trip".tr)),
            body: Stack(alignment: Alignment.center, children: [
              SizedBox(
                  height: mediaQueryData.size.height, width: double.maxFinite),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgRectangle11),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration:  const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                20.0), // Top-left corner rounded
                            topRight: Radius.circular(
                                20.0), // Top-right corner rounded
                          ),
                        ),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 36.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle8,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        radius: BorderRadius.circular(20.h),
                                        margin: EdgeInsets.only(bottom: 3.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_ben_stokes".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumMedium),
                                            ])),
                                    const Spacer(),
                                    CustomIconButton(
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v),
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgMenuOnerror))
                                  ])),
                          SizedBox(height: 26.v),
                          Text("msg_how_is_your_trip".tr,
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 13.v),
                          Column(
                            children: [
                              RatingBar.builder(
                                initialRating: rating,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (newRating) {
                                  setState(() {
                                    rating = newRating;
                                  });
                                },
                              ),
                            ],
                          ),
                          if (rating >= 0) Text("Rating: $rating"),
                          CustomTextFormField(
                              controller: feedbackoneController,
                              margin: EdgeInsets.only(
                                  left: 36.h, top: 22.v, right: 36.h),
                              hintText: "msg_write_your_feedback".tr,
                              textInputAction: TextInputAction.done),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 36.h, top: 24.v),
                                  child: Text("lbl_trip_detail".tr,
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 11.v),
                          SizedBox(
                              height: 111.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            decoration: AppDecoration.fillGray,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgVector,
                                                height: 55.v,
                                                width: 374.h))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: CustomRadioButton(
                                            text: "lbl_skate_park".tr,
                                            value: "lbl_skate_park".tr,
                                            groupValue: radioGroup,
                                            margin: EdgeInsets.only(
                                                left: 36.h, top: 16.v),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 1.v),
                                            textStyle: CustomTextStyles
                                                .titleSmallMedium,
                                            onChange: (value) {
                                              radioGroup = value;
                                            })),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            decoration: AppDecoration.fillGray,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgVector,
                                                height: 55.v,
                                                width: 374.h))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 73.h, bottom: 16.v),
                                            child: Text("lbl_home".tr,
                                                style: CustomTextStyles
                                                    .titleSmallMedium))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLocation,
                                        height: 24.v,
                                        width: 18.h,
                                        alignment: Alignment.bottomLeft,
                                        margin: EdgeInsets.only(
                                            left: 39.h, bottom: 16.v)),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 48.h),
                                            child: SizedBox(
                                                height: 31.v,
                                                child: VerticalDivider(
                                                    width: 2.h,
                                                    thickness: 2.v,
                                                    color: appTheme.gray400))))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 36.h, top: 26.v),
                                  child: Text("lbl_payment_detail".tr,
                                      style: theme.textTheme.titleMedium))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 36.h, top: 12.v, right: 36.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text("lbl_trip_expense".tr,
                                            style: theme.textTheme.bodyMedium)),
                                    Text("lbl_9_00".tr,
                                        style: theme.textTheme.bodyMedium)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 36.h, top: 5.v, right: 36.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("msg_discount_voucher".tr,
                                        style: theme.textTheme.bodyMedium),
                                    Text("lbl_1_00".tr,
                                        style: theme.textTheme.bodyMedium)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 36.h, top: 6.v, right: 36.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_total".tr,
                                        style: theme.textTheme.bodyMedium),
                                    Text("lbl_8_00".tr,
                                        style: theme.textTheme.bodyMedium),
                                  ])),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomElevatedButton(
                              text: "lbl_submit".tr,
                              margin: EdgeInsets.only(
                                  left: 36.h, right: 36.h, bottom: 24.v)),
                          const SizedBox(
                            height: 35,
                          ),
                        ]),
                      )))
            ])));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
