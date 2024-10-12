import 'package:flutter/material.dart';
import 'package:flutter_atomic_design/components/atoms/atoms.dart';

class FADAppbar extends StatelessWidget implements PreferredSizeWidget {
  const FADAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        )
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('appbar title'),
          const SizedBox(
            width: 4,
          ),
          FADButton.secondary(
            height: 30,
            text: 'button',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
