import 'package:dotplus/utils/app_export.dart';
import 'package:dotplus/utils/pref_utils.dart';
import 'package:get/get_core/src/get_main.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
  }
}
