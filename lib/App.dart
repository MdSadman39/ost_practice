import 'package:flutter/material.dart';
import 'package:ost_practice/Screens/Todo_list_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListApp(),
    );
  }
}
