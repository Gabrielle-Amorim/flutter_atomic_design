import 'package:flutter/material.dart';

class FADButton extends StatelessWidget {
  const FADButton._({
    this.width,
    this.height,
    this.borderRadius,
    this.borderColor,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onTap,
  });

  factory FADButton.primary({
    required String text,
    required VoidCallback onTap,
    double? width,
    double? height,
    double? borderRadius,
  }) {
    return FADButton._(
      width: width,
      height: height,
      borderRadius: borderRadius,
      text: text,
      textColor: Colors.white,
      backgroundColor: Colors.red,
      onTap: onTap,
    );
  }

  factory FADButton.secondary({
    required String text,
    required VoidCallback onTap,
    double? width,
    double? height,
    double? borderRadius,
  }) {
    return FADButton._(
      width: width,
      height: height,
      borderRadius: borderRadius,
      text: text,
      textColor: Colors.red,
      backgroundColor: Colors.transparent,
      onTap: onTap,
      borderColor: Colors.red,
    );
  }

  factory FADButton.tertiary({
    required String text,
    required VoidCallback onTap,
    double? width,
    double? height,
    double? borderRadius,
  }) {
    return FADButton._(
      width: width,
      height: height,
      borderRadius: borderRadius,
      text: text,
      textColor: Colors.red,
      backgroundColor: Colors.transparent,
      onTap: onTap,
    );
  }

  final double? width;
  final double? height;
  final double? borderRadius;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color? borderColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height ?? 40,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          color: backgroundColor,
          border: borderColor != null ? Border.all(color: borderColor!) : null,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
