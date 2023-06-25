import 'package:get/get.dart';
import 'package:to_do_app/app/data/models/todo_model.dart';

class TodoDetailsPageController extends GetxController {
   Rx<Todo?> todo =Rx<Todo?>(null);
  @override
  void onInit() {
    super.onInit();
    todo(Get.arguments);
  }


  void deleteTodo() {}

  editTodo() {}
}
