import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:clash_royale_stats/models/player.dart';
import 'package:clash_royale_stats/providers/player.dart';
import 'package:clash_royale_stats/widgets/level.dart';
import 'package:clash_royale_stats/widgets/stats_container.dart';

class PlayerScreen extends ConsumerStatefulWidget {
  const PlayerScreen({
    super.key,
    required this.tag,
  });

  final String tag;

  @override
  ConsumerState<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends ConsumerState<PlayerScreen> {
  late Future<void> _playerFuture;

  @override
  void initState() {
    super.initState();

    _playerFuture =
        ref.read(playerProvider.notifier).loadPlayerInfo(widget.tag);
  }

  Widget _renderAppBarTitle(AsyncSnapshot<void> snapshot, Player player) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Text('Loading');
    }

    if (snapshot.hasError) {
      return const Text('Something went wrong');
    }

    return Text(player.name);
  }

  Widget _renderBody(AsyncSnapshot<void> snapshot, Player player) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (snapshot.hasError) {
      return Text(snapshot.error.toString());
    }

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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 36.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          leadingWidth: 36.0,
          title: FutureBuilder(
            future: _playerFuture,
            builder: (ctx, snapshot) => _renderAppBarTitle(snapshot, player),
          ),
          actions: [
            Level(level: player.expLevel),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder(
          future: _playerFuture,
          builder: (ctx, snapshot) => _renderBody(snapshot, player),
        ),
      ),
    );
  }
}
