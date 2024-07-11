import 'package:clash_royale_stats/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import 'package:clash_royale_stats/models/card.dart' as card_model;

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
    required this.card,
  });

  final card_model.Card card;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Favorite Card',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/images/general/cards.png',
              alignment: Alignment.center,
              width: 32.0,
              height: 32.0,
            ),
          ],
        ),
        CardWidget(card: card),
        const SizedBox(height: 8),
        Text(
          card.name,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
