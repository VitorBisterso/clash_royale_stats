import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:clash_royale_stats/models/player.dart';
import 'package:clash_royale_stats/mocks/player.dart';

class PlayerNotifier extends StateNotifier<Player> {
  PlayerNotifier() : super(Player.empty());

  Future<void> loadPlayerInfo(String tag) async {
    return Future(
      () {
        state = mockPlayer();
      },
    );
  }

  Future<void> loadBattles(String tag) async {}

  Future<void> loadChests(String tag) async {}
}

final playerProvider = StateNotifierProvider<PlayerNotifier, Player>(
  (ref) => PlayerNotifier(),
);
