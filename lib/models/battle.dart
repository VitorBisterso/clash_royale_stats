import 'package:clash_royale_stats/models/card.dart';

class BattlePlayer {
  const BattlePlayer({
    required this.tag,
    required this.name,
    required this.startingTrophies,
    required this.trophyChange,
    required this.crowns,
    required this.kingTowerHitPoints,
    required this.princessTowersHitPoints,
    required this.elixirLeaked,
    required this.cards,
    required this.supportCard,
  });

  final String tag;
  final String name;
  final int startingTrophies;
  final int trophyChange;
  final int crowns;
  final int kingTowerHitPoints;
  final List<int> princessTowersHitPoints;
  final int elixirLeaked;
  final List<Card> cards;
  final Card supportCard;
}

class Battle {
  const Battle({
    required this.battleTime,
    required this.arena,
    required this.team,
    required this.opponent,
  });

  final String battleTime;
  final String arena;
  final List<BattlePlayer> team;
  final List<BattlePlayer> opponent;
}
