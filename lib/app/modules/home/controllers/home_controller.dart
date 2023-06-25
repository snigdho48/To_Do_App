import 'package:get/get.dart';
import 'package:to_do_app/app/data/models/todo_model.dart';
import 'package:to_do_app/app/routes/app_pages.dart';

class HomeController extends GetxController {
  RxList<Todo> todos = RxList<Todo>([]);

  @override
  void onInit() {
    super.onInit();
    todos.add(Todo(
      title: 'Todo 1',
      description: 'Description 1',
      status: 0,
      id: 1,
    ));
  }

  void DetailsPage(Todo todo) =>
      Get.toNamed(Routes.TODO_DETAILS_PAGE, arguments: todo);
}
