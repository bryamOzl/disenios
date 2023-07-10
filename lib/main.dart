import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenios/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scrool_screen': (_) => ScroolDesignScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
