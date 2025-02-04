import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/shared/models/player_model.dart';
import 'package:hello_world/shared/models/server_model.dart';

@RoutePage()
class ServerDetailsPage extends StatelessWidget {
  final ServerModel server;

  const ServerDetailsPage({required this.server, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(server.name)),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Map: ${server.mapName}\nPlayers: ${server.numPlayers}/${server.maxPlayers}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: server.players.length,
              itemBuilder: (BuildContext context, int index) {
                final PlayerModel player = server.players[index];
                return ListTile(
                  title: Text(player.name),
                  subtitle: Text('Kills: ${player.kills}, Deaths: ${player.deaths}, Ping: ${player.ping}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
