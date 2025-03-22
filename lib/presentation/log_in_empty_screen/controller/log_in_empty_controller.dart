import 'package:yodha_s_application4/core/app_export.dart';
import 'package:yodha_s_application4/presentation/log_in_empty_screen/models/log_in_empty_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogInEmptyScreen.
///
/// This class manages the state of the LogInEmptyScreen, including the
/// current logInEmptyModelObj
class LogInEmptyController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInEmptyModel> logInEmptyModelObj = LogInEmptyModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberme = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
