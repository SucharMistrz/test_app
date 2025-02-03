import 'package:hello_world/shared/models/player_model.dart';

class PlayerDTO {
  final String name;
  final int score;
  final int kills;
  final int deaths;
  final int team;
  final int ping;
  final bool isAI;

  PlayerDTO({
    required this.name,
    required this.score,
    required this.kills,
    required this.deaths,
    required this.team,
    required this.ping,
    required this.isAI,
  });

  static PlayerDTO fromJson(Map<String, dynamic> json) {
    return PlayerDTO(
      name: json['name']?.toString() ?? 'Unknown',
      score: json['score'] as int? ?? 0,
      kills: json['kills'] as int? ?? 0,
      deaths: json['deaths'] as int? ?? 0,
      team: json['team'] as int? ?? 0,
      ping: json['ping'] as int? ?? 0,
      isAI: (json['isAI'] as int? ?? 0) == 1,
    );
  }

  PlayerModel toModel() {
    return PlayerModel(
      name: name,
      score: score,
      kills: kills,
      deaths: deaths,
      team: team,
      ping: ping,
      isAI: isAI,
    );
  }
}
