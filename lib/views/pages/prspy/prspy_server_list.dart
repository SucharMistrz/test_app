import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/bloc/controllers/server_controller.dart';
import 'package:hello_world/shared/models/server_model.dart';

class ServerList extends StatelessWidget {
  const ServerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<ServerController, List<ServerModel>>(
      builder: (BuildContext context, List<ServerModel> servers) {
        final int totalPlayers =
            context.read<ServerController>().getTotalPlayers();

        return Column(
          children: <Widget>[
            Text(
              'Total Players: $totalPlayers',
              style: const TextStyle(fontSize: 22),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: servers.length,
                itemBuilder: (BuildContext context, int index) {
                  final ServerModel server = servers[index];
                  return ListTile(
                    title:
                        Text(server.name, style: const TextStyle(fontSize: 16)),
                    subtitle: Text('Players: ${server.numPlayers}',
                        style: const TextStyle(fontSize: 12)),
                  );
                },
              ),
            ),
          ],
        );
      },
    ));
  }
}
