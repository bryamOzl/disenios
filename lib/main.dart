import 'package:flutter/material.dart';

import 'package:disenios/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scrool_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scrool_screen': (_) => ScroolDesignScreen(),
      },
    );
  }
}
