import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.pie_chart_sharp,
              color: Colors.blue,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.bus_alert_outlined,
              color: Colors.indigo,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shopping_bag,
              color: Colors.pinkAccent,
              text: 'Shopping',
            ),
            _SingleCard(
              icon: CupertinoIcons.doc_fill,
              color: Colors.orange,
              text: 'Bills',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: CupertinoIcons.play_rectangle,
              color: Colors.blue,
              text: 'Entertainment',
            ),
            _SingleCard(
              icon: Icons.sports_golf_sharp,
              color: Colors.lightGreen,
              text: 'Grocery',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.pie_chart_sharp,
              color: Colors.blue,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.bus_alert_outlined,
              color: Colors.indigo,
              text: 'Transport',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon, size: 35, color: Colors.white),
            radius: 30,
          ),
          const SizedBox(height: 15),
          Text(
            this.text,
            style: TextStyle(
              color: this.color,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
