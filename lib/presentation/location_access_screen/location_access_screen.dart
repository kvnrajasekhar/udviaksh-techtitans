import 'controller/location_access_controller.dart';
import 'package:flutter/material.dart';
import 'package:yodha_s_application4/core/app_export.dart';
import 'package:yodha_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LocationAccessScreen extends GetWidget<LocationAccessController> {
  const LocationAccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 143.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 68.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1,
                height: 194.v,
                width: 222.h,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 40.h),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_access_location".tr.toUpperCase(),
                rightIcon: Container(
                  padding: EdgeInsets.all(8.h),
                  margin: EdgeInsets.only(left: 24.h),
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMappin,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
                buttonTextStyle: theme.textTheme.titleMedium!,
              ),
              SizedBox(height: 38.v),
              Container(
                width: 306.h,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: Text(
                  "msg_dfood_will_access".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeSecondaryContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
