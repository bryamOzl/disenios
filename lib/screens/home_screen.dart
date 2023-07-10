import 'package:flutter/material.dart';

import 'package:disenios/widgets/background.dart';
import 'package:disenios/widgets/page_title.dart';
import 'package:disenios/widgets/card_table.dart';
import 'package:disenios/widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          // Home Body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle(),
          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}
