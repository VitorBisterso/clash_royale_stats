import 'package:clash_royale_stats/widgets/colored_stat.dart';
import 'package:flutter/material.dart';

import 'package:clash_royale_stats/theme/colors.dart';

class GamesInfo extends StatelessWidget {
  const GamesInfo({
    super.key,
    required this.gamesPlayed,
    required this.wins,
    required this.losses,
    required this.threeCrownWins,
  });

  final int gamesPlayed;
  final int wins;
  final int losses;
  final int threeCrownWins;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: ColorConstants.onContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/general/battle.png',
                  alignment: Alignment.center,
                  width: 80.0,
                  height: 80.0,
                ),
                const SizedBox(height: 16),
                ColoredStat(
                  text: 'Games Played',
                  stat: gamesPlayed,
                  color: ColorConstants.primaryColor,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ColoredStat(
                      text: 'Wins',
                      stat: wins,
                      color: ColorConstants.green,
                    ),
                    ColoredStat(
                      text: 'Losses',
                      stat: losses,
                      color: ColorConstants.red,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ColoredStat(
                  text: '3 Crown Wins',
                  stat: threeCrownWins,
                  color: ColorConstants.gold,
                  icon: 'assets/images/general/crown.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
