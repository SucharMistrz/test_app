import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/controllers/server_controller.dart';
import '../../../shared/models/server_model.dart';

class ServerList extends StatelessWidget {
  const ServerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServerCubit, List<Server>>(
      builder: (context, servers) {
        final totalPlayers = context.read<ServerCubit>().getTotalPlayers();

        return Column(
          children: [
            Text(
              'Total Players: $totalPlayers',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: servers.length,
                itemBuilder: (context, index) {
                  final server = servers[index];
                  return ListTile(
                    title: Text(server.name),
                    subtitle: Text('Players: ${server.numPlayers}'),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
