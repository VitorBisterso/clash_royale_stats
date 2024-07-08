import 'package:clash_royale_stats/widgets/games_info.dart';
import 'package:flutter/material.dart';

import 'package:clash_royale_stats/widgets/stats_container.dart';
import 'package:clash_royale_stats/models/player.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    final stats = {
      'Current trophies': player.trophies,
      'Max trophies': player.bestTrophies,
      'Donations': player.donations,
      'Received donations': player.donationsReceived,
      'Total donations': player.totalDonations,
    };

    return SingleChildScrollView(
      child: Column(
        children: [
          StatsContainer(
            title: 'Stats',
            icon: 'assets/images/general/crown.png',
            stats: stats,
          ),
          const SizedBox(height: 32),
          GamesInfo(
            gamesPlayed: player.battleCount,
            wins: player.wins,
            losses: player.losses,
            threeCrownWins: player.threeCrownWins,
          ),
        ],
      ),
    );
  }
}
