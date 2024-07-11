import 'package:clash_royale_stats/models/battle.dart';
import 'package:clash_royale_stats/models/card.dart';
import 'package:clash_royale_stats/models/chest.dart';

class Player {
  Player.empty()
      : tag = '',
        name = '',
        expLevel = -1,
        trophies = -1,
        bestTrophies = -1,
        wins = -1,
        losses = -1,
        battleCount = -1,
        threeCrownWins = -1,
        donations = -1,
        donationsReceived = -1,
        totalDonations = -1,
        favoriteCard = Card.empty(),
        currentDeck = [],
        cards = [],
        battles = [],
        chests = [];

  Player({
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
    required this.favoriteCard,
    required this.currentDeck,
    required this.cards,
    required this.battles,
    required this.chests,
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
  final Card favoriteCard;
  final List<Card> currentDeck;
  final List<Card> cards;
  final List<Battle> battles;
  final List<Chest> chests;
}
