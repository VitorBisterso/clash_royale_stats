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
}
