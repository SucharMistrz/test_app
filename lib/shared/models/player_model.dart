class PlayerModel {
  final String name;
  final int score;
  final int kills;
  final int deaths;
  final int team;
  final int ping;
  final bool isAI;

  PlayerModel({
    required this.name,
    required this.score,
    required this.kills,
    required this.deaths,
    required this.team,
    required this.ping,
    required this.isAI,
  });
}
