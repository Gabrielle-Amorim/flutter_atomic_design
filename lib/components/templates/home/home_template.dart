import 'package:flutter/material.dart';

import '../../components.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({
    super.key,
    required this.data,
  });

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FADAppbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 16,
              ),
              FADButton.primary(
                text: 'Button Primary',
                onTap: () {
                  print('clicked button primary');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              FADButton.secondary(
                text: 'Button Secondary',
                onTap: () {
                  print('clicked button secondary');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              FADButton.tertiary(
                text: 'Button Tertiary',
                onTap: () {
                  print('clicked button tertiary');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 16,
              ),
              const FADSearch(),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
