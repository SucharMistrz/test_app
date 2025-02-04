import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/infra/services/server_service.dart';
import 'package:hello_world/shared/models/server_model.dart';

class ServerCubit extends Cubit<List<ServerModel>?> {
  ServerCubit() : super(null);

  bool isLoading = false;
  DateTime? lastRequestTime;

  Future<void> loadServers() async {
    final DateTime now = DateTime.now();

    if (lastRequestTime != null && now.difference(lastRequestTime!) < const Duration(seconds: 30)) {
      print('Request blocked: Rate limit reached');
      return;
    }

    if (isLoading) {
      return;
    }

    isLoading = true;
    emit(null);

    final List<ServerModel> servers = await ServerService.fetchServers();
    servers.sort((ServerModel a, ServerModel b) => b.numPlayers.compareTo(a.numPlayers));

    emit(servers);
    isLoading = false;
    lastRequestTime = now;
  }

  int getTotalPlayers() {
    return state!.fold(0, (int sum, ServerModel server) => sum + server.numPlayers);
  }
}
