import 'package:flutter/material.dart';

import 'package:clash_royale_stats/theme/colors.dart';

enum CardType {
  normal,
  support,
}

enum Rarity {
  common,
  rare,
  epic,
  legendary,
  champion,
}

class Card {
  Card.empty()
      : id = -1,
        name = 'Sparky',
        level = 10,
        maxLevel = -1,
        type = CardType.normal,
        rarity = Rarity.legendary,
        count = -1,
        imageUrl =
            'https://api-assets.clashroyale.com/cards/300/2GKMkBrArZXgQxf2ygFjDs4VvGYPbx8F6Lj_68iVhIM.png',
        elixirCost = -1;

  const Card({
    required this.id,
    required this.name,
    required this.level,
    required this.maxLevel,
    required this.type,
    required this.rarity,
    required this.count,
    required this.imageUrl,
    this.elixirCost = -1,
  });

  final int id;
  final String name;
  final int level;
  final int maxLevel;
  final CardType type;
  final Rarity rarity;
  final int count;
  final String imageUrl;
  final int elixirCost;

  static Map<Rarity, Map<String, Color>> cardStyles = {
    Rarity.common: {
      'bgColor': ColorConstants.bgCommon,
      'textColor': ColorConstants.textCommon,
    },
    Rarity.rare: {
      'bgColor': ColorConstants.bgRare,
      'textColor': ColorConstants.textRare,
    },
    Rarity.epic: {
      'bgColor': ColorConstants.bgEpic,
      'textColor': ColorConstants.textEpic,
    },
    Rarity.legendary: {
      'bgColor': ColorConstants.bgLegendary,
      'textColor1': ColorConstants.textEpic,
      'textColor2': ColorConstants.textLegendary,
    },
    Rarity.champion: {
      'bgColor': ColorConstants.bgRare,
      'textColor': ColorConstants.textRare,
    },
  };
}
