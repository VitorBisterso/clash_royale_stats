import 'package:faker/faker.dart';

import 'package:clash_royale_stats/models/player.dart';
import 'package:clash_royale_stats/models/card.dart';

Player mockPlayer() {
  final trophies = faker.randomGenerator.integer(9000);
  final wins = faker.randomGenerator.integer(1000, min: 1);
  final losses = faker.randomGenerator.integer(1000, min: 1);
  final donations = faker.randomGenerator.integer(10000, min: 1);
  return Player(
    tag: faker.internet.password(length: 9),
    name: faker.internet.userName(),
    expLevel: faker.randomGenerator.integer(100, min: 1),
    trophies: trophies,
    bestTrophies: faker.randomGenerator.integer(9000, min: trophies),
    wins: wins,
    losses: losses,
    battleCount: wins + losses,
    threeCrownWins: faker.randomGenerator.integer(wins, min: 1),
    donations: donations,
    donationsReceived: faker.randomGenerator.integer(10000, min: 1),
    totalDonations: faker.randomGenerator.integer(10000, min: donations),
    favoriteCard: Card.empty(),
    currentDeck: [],
    cards: [],
    battles: [],
    chests: [],
  );
}
