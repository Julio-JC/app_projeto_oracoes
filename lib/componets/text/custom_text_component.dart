import 'package:flutter/material.dart';

class CustomTextComponent extends StatelessWidget {
  const CustomTextComponent({
    super.key,
    required this.text,
    required this.textSize,
    this.fontFamily,
    this.color,
    this.fontWeight,
    this.textAlign,
  });
  final String text;
  final ValueNotifier<double> textSize;
  final String? fontFamily;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: textSize,
      builder: (_, value, __) => Text(
        text,
        style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: textSize.value,
          fontWeight: fontWeight,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
