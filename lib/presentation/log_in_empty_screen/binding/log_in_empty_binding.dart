import '../controller/log_in_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LogInEmptyScreen.
///
/// This class ensures that the LogInEmptyController is created when the
/// LogInEmptyScreen is first loaded.
class LogInEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInEmptyController());
  }
}
