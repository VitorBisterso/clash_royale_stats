enum ChestType {
  silver,
  gold,
  tower,
  giant,
  goldCrate,
  magical,
  royalWild,
  mega,
  epic,
  legendary
}

class Chest {
  const Chest({
    required this.index,
    required this.type,
  });

  final int index;
  final ChestType type;

  get chestImage {
    const imageBasePath = 'assets/images/chests';
    switch (type) {
      case ChestType.silver:
        return '$imageBasePath/silver.png';
      case ChestType.gold:
        return '$imageBasePath/gold.png';
      case ChestType.tower:
        return '$imageBasePath/tower.png';
      case ChestType.giant:
        return '$imageBasePath/giant.png';
      case ChestType.goldCrate:
        return '$imageBasePath/gold_crate.png';
      case ChestType.magical:
        return '$imageBasePath/magical.png';
      case ChestType.royalWild:
        return '$imageBasePath/royal_wild.png';
      case ChestType.mega:
        return '$imageBasePath/mega.png';
      case ChestType.epic:
        return '$imageBasePath/epic.png';
      case ChestType.legendary:
        return '$imageBasePath/legendary.png';
      default:
    }
  }
}
