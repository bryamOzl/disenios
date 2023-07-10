import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded), label: 'Calendario'),
        BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_outlined), label: 'Gráfico'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp), label: 'Usuarios'),
      ],
    );
  }
}
