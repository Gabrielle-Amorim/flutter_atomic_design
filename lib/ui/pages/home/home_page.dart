import 'package:flutter/material.dart';

import '../../../components/templates/home/home_template.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeTemplate(
      data: [
        'data',
        'data02',
        'data03',
      ],
    );
  }
}
