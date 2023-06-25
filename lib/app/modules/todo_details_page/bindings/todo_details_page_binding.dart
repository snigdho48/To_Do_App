import 'package:get/get.dart';

import '../controllers/todo_details_page_controller.dart';

class TodoDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoDetailsPageController>(
      () => TodoDetailsPageController(),
    );
  }
}
