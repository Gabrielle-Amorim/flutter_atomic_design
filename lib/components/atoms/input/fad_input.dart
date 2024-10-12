import 'package:flutter/material.dart';

class FADInput extends StatelessWidget {
  const FADInput({
    super.key,
    required this.hint,
    this.width,
    this.height,
  });

  final String hint;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width * 0.6,
      height: height ?? 50,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
