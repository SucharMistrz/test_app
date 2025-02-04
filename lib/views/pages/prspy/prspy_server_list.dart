import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/bloc/server_cubit/server_cubit.dart';
import 'package:hello_world/shared/models/server_model.dart';
import 'package:hello_world/shared/router/app_router.gr.dart';

class PrspyServerList extends StatelessWidget {
  const PrspyServerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ServerCubit, List<ServerModel>?>(
        builder: (BuildContext context, List<ServerModel>? servers) {
          if (servers == null) { //To-do proper isLoading
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: servers.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ServerModel server = servers[index];
                    return ListTile(
                      title: Text(server.name, style: const TextStyle(fontSize: 14)),
                      subtitle: Text('Players: ${server.numPlayers}', style: const TextStyle(fontSize: 13)),
                      onTap: () {
                        context.router.push(ServerDetailsRoute(server: server));
                      },
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<ServerCubit, List<ServerModel>?>(
                builder: (BuildContext context, List<ServerModel>? servers) {
                  final int totalPlayers = servers == null ? 0 : context.read<ServerCubit>().getTotalPlayers();
                  return Text(
                    '$totalPlayers PLAYERS ONLINE',
                    style: const TextStyle(fontSize: 20),
                  );
                },
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<ServerCubit>().loadServers();
              },
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
