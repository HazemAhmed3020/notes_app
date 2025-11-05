import 'package:flutter/material.dart';
import 'package:notes_app_exmp/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(brightness: Brightness.dark , scaffoldBackgroundColor: Color(0xFF303030)
         ),
      home: const NotesView(),
    );
  }
}
