import 'package:flutter/material.dart';

class ColoredStat extends StatelessWidget {
  const ColoredStat({
    super.key,
    required this.text,
    required this.stat,
    required this.color,
    this.icon = '',
  });

  final String text;
  final int stat;
  final Color color;
  final String icon;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 24);

    final title = Text(
      text,
      style: textStyle,
    );

    final titleWidget = icon.isEmpty
        ? title
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title,
              const SizedBox(width: 8),
              Image.asset(
                icon,
                alignment: Alignment.center,
                width: 32.0,
                height: 32.0,
              ),
            ],
          );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        titleWidget,
        const SizedBox(height: 8),
        Text(
          stat.toString(),
          style: TextStyle(color: color, fontSize: 24),
        ),
      ],
    );
  }
}
