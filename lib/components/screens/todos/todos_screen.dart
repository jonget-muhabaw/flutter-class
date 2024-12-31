import 'package:class_one/components/screens/my_form.dart';
import 'package:class_one/components/screens/todos/todos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodosScreen extends StatelessWidget {
  TodosScreen({super.key});
  final TextEditingController todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: true,
      body: Consumer<TodosProvider>(builder: (contex, todosProvider, child) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 50, 10, 15),
              child: MyForm(
                  todoController: todoController,
                  hintText: "add todos",
                  obscureText: false,
                  icon: Icon(Icons.task)),
            ),
            Container(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  todosProvider.addTodos(todoController.text);
                },
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.white),
                child: const Text(
                  "Add Task",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: todosProvider.todos.length,
                  itemBuilder: (context, idx) {
                    return Container(
                      height: 70,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          title: Text(
                            todosProvider.todos[idx],
                            style: const TextStyle(
                                color: Colors.black, fontSize: 12),
                          ),
                          trailing: TextButton(
                              onPressed: () {
                                todosProvider.removeTodos(idx);
                              },
                              child: const Text("Remove")),
                        ),
                      ),
                    );
                  }),
            )
          ],
        );
      }),
    );
  }
}
