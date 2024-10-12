import 'package:flutter/material.dart';

import '../../components.dart';

class FADSearch extends StatelessWidget {
  const FADSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: const Text('label'),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            const FADInput(
              hint: 'hint text',
            ),
            const Spacer(),
            FADButton.primary(
              text: 'search',
              onTap: () {
                print('clicked search button');
              },
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
