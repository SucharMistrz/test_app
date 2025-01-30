import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/shared/models/server_model.dart';
import 'package:hello_world/shared/services/server_service.dart';

class ServerController extends Cubit<List<ServerModel>> {
  ServerController() : super(<ServerModel>[]);


  bool isLoading = false;

  Future<void> loadServers() async {
    isLoading = true;
    emit(<ServerModel>[]);

    try {
      final List<ServerModel> servers = await ServerService.fetchServers();
      emit(servers);
    } catch (e) {
      print('Error loading servers: $e');
    } finally {
      isLoading = false;
    }
  }
  

  int getTotalPlayers() {
    return state.fold(0, (int sum, ServerModel server) => sum + server.numPlayers);
  }
}
