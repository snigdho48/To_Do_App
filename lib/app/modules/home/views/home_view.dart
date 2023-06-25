import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/todo_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // create a list of todos card using Obx(()=>) widget
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.todos.length,
                  itemBuilder: (context, index) {
                    Todo todo = controller.todos[index];
                    return TodoCard(todo: todo);
                  },
                )),
          ],
        ));
  }
}

class TodoCard extends GetView<HomeController> {
  const TodoCard({
    super.key,
    required this.todo,
  });

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => controller.DetailsPage(todo),
        title: Text(todo.title!),
        subtitle: Text(todo.description!),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            controller.todos.remove(todo);
          },
        ),
      ),
    );
  }
}
