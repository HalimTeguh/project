import 'package:book_app/View/book_list_page.dart';
import 'package:book_app/View/controller/book_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookController(),
      child: MaterialApp(
      title: 'Book Catalogue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BookListPage(),
    ));
  }
}