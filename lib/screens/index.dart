import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: 150, height: 50),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'basic_design'),
                child: Text('Disenio 1'),
              ),
            ),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: 150, height: 50),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'scrool_screen'),
                child: Text('Disenio 2'),
              ),
            ),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: 150, height: 50),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'home_screen'),
                child: Text('Disenio 3'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
