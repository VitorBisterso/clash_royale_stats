import 'package:clash_royale_stats/models/battle.dart';
import 'package:clash_royale_stats/models/card.dart';

class Player {
  const Player({
    required this.tag,
    required this.name,
    required this.expLevel,
    required this.trophies,
    required this.bestTrophies,
    required this.wins,
    required this.losses,
    required this.battleCount,
    required this.threeCrownWins,
    required this.donations,
    required this.donationsReceived,
    required this.totalDonations,
    required this.cards,
    required this.battles,
  });

  final String tag;
  final String name;
  final int expLevel;
  final int trophies;
  final int bestTrophies;
  final int wins;
  final int losses;
  final int battleCount;
  final int threeCrownWins;
  final int donations;
  final int donationsReceived;
  final int totalDonations;
  final List<Card> cards;
  final List<Battle> battles;
}
