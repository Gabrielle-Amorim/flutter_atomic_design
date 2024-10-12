import 'package:flutter/material.dart';
import 'package:flutter_atomic_design/components/atoms/atoms.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class FADStorybook extends StatelessWidget {
  const FADStorybook({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [
        Story(
          name: 'Atoms/Button/Primary',
          description: 'Button Primary',
          builder: (context) {
            return FADButton.primary(
              text: 'Primary Button',
              onTap: () {},
              width: context.knobs.options(
                label: 'Width',
                initial: 100,
                options: [
                  const Option(
                    label: '100',
                    value: 100,
                  ),
                  const Option(
                    label: '200',
                    value: 200,
                  ),
                  const Option(
                    label: '300',
                    value: 300,
                  )
                ],
              ),
            );
          },
        ),
        Story(
          name: 'Atoms/Button/Secondary',
          description: 'Button Secondary',
          builder: (context) {
            return FADButton.secondary(
              text: 'Secondary Button',
              onTap: () {},
            );
          },
        ),
        Story(
          name: 'Atoms/Button/Tertiary',
          description: 'Button Tertiary',
          builder: (context) {
            return FADButton.tertiary(
              text: 'Tertiary Button',
              onTap: () {},
            );
          },
        ),
      ],
    );
  }
}
