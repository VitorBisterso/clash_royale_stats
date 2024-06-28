import 'package:clash_royale_stats/models/player.dart';
import 'package:clash_royale_stats/providers/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  Widget _renderAppBar(AsyncSnapshot<void> snapshot, Player player) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Text('Loading...');
    }

    if (snapshot.hasError) {
      return const Text('Something went wrong...');
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

    return Text(player.trophies.toString());
  }

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);

    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder(
          future: _playerFuture,
          builder: (ctx, snapshot) => _renderAppBar(snapshot, player),
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
