import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage('assets/landscape.jpg')),
            _Title(),
            _ButtonSection(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                'Tempor consectetur dolore et nostrud amet veniam tempor. Esse ea elit ad eu ex ex ex nostrud. Sint cupidatat ipsum veniam pariatur et voluptate mollit dolore cupidatat ad. Quis dolore deserunt cupidatat aliqua. Tempor consequat reprehenderit enim proident enim sit quis aliqua magna tempor consequat nostrud ea anim. Laboris est amet sit do culpa anim magna ullamco ut sint amet.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Imagen de un paisaje montanioso',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Alaska, Estados Unidos',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomButton(
              icon: Icons.call, text: 'CALL', color: Colors.lightBlue),
          _CustomButton(
              icon: Icons.map_sharp, text: 'ROUTE', color: Colors.lightBlue),
          _CustomButton(
              icon: Icons.share, text: 'SHARE', color: Colors.lightBlue),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 30.0),
        SizedBox(height: 5),
        Text('$text', style: TextStyle(color: color))
      ],
    );
  }
}
