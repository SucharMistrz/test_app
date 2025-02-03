import 'package:hello_world/infra/dto/player_dto/player_dto.dart';
import 'package:hello_world/shared/models/player_model.dart';
import 'package:hello_world/shared/models/server_model.dart';

class ServerDTO {
  final String serverId;
  final String name;
  final String countryFlag;
  final int numPlayers;
  final int maxPlayers;
  final bool hasMumble;
  final String mapName;
  final List<PlayerDTO> players;

  ServerDTO({
    required this.serverId,
    required this.name,
    required this.countryFlag,
    required this.numPlayers,
    required this.maxPlayers,
    required this.hasMumble,
    required this.mapName,
    required this.players,
  });

  static ServerDTO fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> properties = json['properties'] as Map<String, dynamic>;

    return ServerDTO(
      serverId: json['serverId']?.toString() ?? 'Unknown Server ID',
      name: properties['hostname']?.toString() ?? 'Unknown Host Name',
      countryFlag: json['countryFlag']?.toString() ?? 'Unknown Country',
      numPlayers: int.tryParse(properties['numplayers']?.toString() ?? '') ?? 0,
      maxPlayers: int.tryParse(properties['maxplayers']?.toString() ?? '') ?? 0,
      hasMumble: json['hasMumble'] as bool? ?? false,
      mapName: properties['mapname']?.toString() ?? 'Unknown',
      players: (json['players'] as List<dynamic>? ?? <dynamic>[])
          .map((dynamic playerJson) => PlayerDTO.fromJson(playerJson as Map<String, dynamic>))
          .toList(),
    );
  }

  ServerModel toModel() {
    return ServerModel(
      serverId: serverId,
      name: name.substring(14),
      countryFlag: countryFlag,
      numPlayers: numPlayers,
      maxPlayers: maxPlayers,
      hasMumble: hasMumble,
      mapName: mapName,
      players: players.map((PlayerDTO player) => player.toModel()).toList(),
    );
  }
}
