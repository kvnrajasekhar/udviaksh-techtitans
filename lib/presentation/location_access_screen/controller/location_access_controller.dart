import 'package:yodha_s_application4/core/app_export.dart';
import 'package:yodha_s_application4/presentation/location_access_screen/models/location_access_model.dart';

/// A controller class for the LocationAccessScreen.
///
/// This class manages the state of the LocationAccessScreen, including the
/// current locationAccessModelObj
class LocationAccessController extends GetxController {
  Rx<LocationAccessModel> locationAccessModelObj = LocationAccessModel().obs;
}
