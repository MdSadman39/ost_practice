import 'package:flutter/material.dart';

import 'UI/Screens/add_new_product_screen.dart';
import 'UI/Screens/product_list_screen.dart';

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     // named navigation.....................
      initialRoute: '/',
      routes: {
        '/':(context)=> const ProductListScreen(),
        AddNewProductScreen.name:(context)=>const  AddNewProductScreen(),
      },
    );
  }
}
