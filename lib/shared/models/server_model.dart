class ServerModel {
  String name;
  int numPlayers;

  ServerModel({required this.name, required this.numPlayers});

  static ServerModel fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> properties = json['properties'] as Map<String, dynamic>;

    return ServerModel(
      name: properties['hostname']?.toString() ?? 'Unknown',
      numPlayers: int.tryParse(properties['numplayers']?.toString() ?? '') ?? 0,
    );
  }
}
