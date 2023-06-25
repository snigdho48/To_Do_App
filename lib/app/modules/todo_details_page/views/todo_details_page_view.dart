import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/todo_details_page_controller.dart';

class TodoDetailsPageView extends GetView<TodoDetailsPageController> {
  const TodoDetailsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() => Text(controller.todo.value!.title!)),
          actions: [
            IconButton(
              onPressed: () => controller.editTodo(),
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () => controller.deleteTodo(),
              icon: const Icon(Icons.delete),
            ),
          ],
          centerTitle: true,
        ),
        body: Obx(
          () => SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(controller.todo.value!.title!,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Card(
                  child: SizedBox(
                      width: Get.width,
                      child: Text(controller.todo.value!.description!)),
                )
              ],
            ),
          ),
        ));
  }
}
