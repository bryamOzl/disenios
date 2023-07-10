import 'package:flutter/material.dart';

class ScroolDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6),
            ],
          ),
        ),
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        Background(),
        //Main Content
        MainContent(),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      height: double.infinity,
      child: Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
