import 'package:flutter/material.dart';

import 'ui/pages/home/home_page.dart';
import 'ui/pages/storybook/storybook.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const FADStorybook();
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
