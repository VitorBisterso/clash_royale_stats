import 'package:flutter/material.dart';

import 'package:clash_royale_stats/theme/colors.dart';

class Level extends StatelessWidget {
  const Level({
    super.key,
    required this.level,
  });

  final int level;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/general/level.png',
            alignment: Alignment.center,
            width: 48.0,
            height: 48.0,
          ),
          Text(
            level.toString(),
            style: TextStyle(
              color: ColorConstants.textWhite,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
