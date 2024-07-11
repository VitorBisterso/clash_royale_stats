import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';

import 'package:clash_royale_stats/models/card.dart' as card_model;

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.card,
    this.size = 150.0,
  });

  final card_model.Card card;
  final double size;

  @override
  Widget build(BuildContext context) {
    final isLegendary = card.rarity == card_model.Rarity.legendary;

    final text = 'Level ${card.level.toString()}';
    final textWidget = isLegendary
        ? GradientAnimationText(
            text: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size / 10.7,
              ),
            ),
            colors: [
              card_model.Card.cardStyles[card.rarity]!['textColor1']!,
              card_model.Card.cardStyles[card.rarity]!['textColor2']!,
            ],
            duration: const Duration(seconds: 3),
            transform: const GradientRotation(pi / 4),
          )
        : Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: card_model.Card.cardStyles[card.rarity]?['textColor'],
              fontSize: size / 10.7,
            ),
          );
    return Stack(
      children: [
        Image.network(
          card.imageUrl,
          width: size,
        ),
        Positioned.fill(
          bottom: size / 5.55,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size / 1.2,
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              decoration: BoxDecoration(
                color: card_model.Card.cardStyles[card.rarity]?['bgColor'],
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: textWidget,
            ),
          ),
        ),
      ],
    );
  }
}
