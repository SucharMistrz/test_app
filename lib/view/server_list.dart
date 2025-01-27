import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/server_cubit.dart';
import '../model/server.dart';

class ServerList extends StatelessWidget {
  const ServerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServerCubit, List<Server>>(
      builder: (context, servers) {
        
        int totalPlayers = servers.fold(0, (sum, server) => sum + server.numPlayers);
        
        
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
