import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/server.dart';

class ServerCubit extends Cubit<List<Server>> {
  ServerCubit() : super([]);

  void loadServers() {
    const data = {
      "servers": [
        {
          "name": "Alliance",
          "properties": {
            "numplayers": "100"
          }
        },
        {
          "name": "LATAMSQUAD",
          "properties": {
            "numplayers": "69"
          }
        },
        {
          "name": "Unit 777",
          "properties": {
            "numplayers": "1"
          }
        }
      ]
    };

    final servers = (data['servers'] as List)
        .map((server) => Server.fromJson(server))
        .toList();

    emit(servers);
  }
}
