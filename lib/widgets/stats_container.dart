import 'package:clash_royale_stats/theme/colors.dart';
import 'package:flutter/material.dart';

class StatsContainer extends StatelessWidget {
  const StatsContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.stats,
  });

  final String title;
  final String icon;
  final Map<String, int> stats;

  @override
  Widget build(BuildContext context) {
    final statsEntries = stats.entries.toList();

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: ColorConstants.onContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(width: 16),
              Image.asset(
                icon,
                height: 32,
              ),
            ],
          ),
          const SizedBox(height: 16),
          ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 8),
              itemCount: statsEntries.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      statsEntries[index].key,
                      style: TextStyle(
                        color: ColorConstants.textWhite,
                      ),
                    ),
                    Text(
                      statsEntries[index].value.toString(),
                      style: TextStyle(
                        color: ColorConstants.textWhite,
                        fontSize: 16,
                      ),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
