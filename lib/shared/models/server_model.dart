import 'package:hello_world/shared/models/player_model.dart';

class ServerModel {
  final String serverId;
  final String name;
  final String countryFlag;
  final int numPlayers;
  final int maxPlayers;
  final bool hasMumble;
  final String mapName;
  final List<PlayerModel> players;

  ServerModel({
    required this.serverId,
    required this.name,
    required this.countryFlag,
    required this.numPlayers,
    required this.maxPlayers,
    required this.hasMumble,
    required this.mapName,
    required this.players,
  });
}
