import 'package:flutter/material.dart';

import 'Add_new_todo_screen.dart';

class TodoListApp extends StatefulWidget {
  const TodoListApp({super.key});

  @override
  State<TodoListApp> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text('Tittle of todo'),
              subtitle: Text('description'),
              leading: Text('status'),
              trailing: Wrap(

                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  IconButton(
                      onPressed: () {
                        ShowDialogStatus(context);
                      },
                      icon: Icon(Icons.edit))
                ],
              ),

              onTap: () {
                ShowDialogStatus(context);
              },

            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewTodoScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<dynamic> ShowDialogStatus(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Change Status'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Idle'),
            ),
            Divider(),
            ListTile(
              title: Text('In Progress'),
            ),
            Divider(),
            ListTile(
              title: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
