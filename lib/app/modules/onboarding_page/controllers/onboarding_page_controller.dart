import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingPageController extends GetxController {
  final storage = GetStorage();

  @override
  void onInit() {
    storage.write('is_first', false);
    super.onInit();
  }
}
