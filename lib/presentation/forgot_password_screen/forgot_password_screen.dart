import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:yodha_s_application4/core/app_export.dart';
import 'package:yodha_s_application4/core/utils/validation_functions.dart';
import 'package:yodha_s_application4/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yodha_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:yodha_s_application4/widgets/custom_elevated_button.dart';
import 'package:yodha_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    height: mediaQueryData.size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.h, vertical: 23.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            "lbl_email".tr.toUpperCase(),
                                            style: theme.textTheme.bodyMedium)),
                                    SizedBox(height: 8.v),
                                    CustomTextFormField(
                                        controller: controller.emailController,
                                        hintText: "msg_example_gmail_com".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_email"
                                                .tr;
                                          }
                                          return null;
                                        }),
                                    SizedBox(height: 30.v),
                                    CustomElevatedButton(
                                        text: "lbl_send_code".tr.toUpperCase(),
                                        onPressed: () {
                                          onTapSendCode();
                                        }),
                                    SizedBox(height: 30.v)
                                  ]))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 42.h, top: 120.v, right: 42.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("lbl_forgot_password".tr,
                                        style: theme.textTheme.headlineLarge),
                                    SizedBox(height: 4.v),
                                    Opacity(
                                        opacity: 0.85,
                                        child: Text("msg_please_sign_in_to".tr,
                                            style: CustomTextStyles
                                                .bodyLargeOrange50a7))
                                  ]))),
                      _buildFour()
                    ])))));
  }

  /// Section Widget
  Widget _buildFour() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 50.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup11),
                    fit: BoxFit.cover)),
            child: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarLeadingIconbutton(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.only(left: 24.h, right: 306.h),
                    onTap: () {
                      onTapArrowLeft();
                    }))));
  }

  /// Navigates to the verificationScreen when the action is triggered.
  onTapSendCode() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
