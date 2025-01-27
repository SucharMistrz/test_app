class Server {
  String name;
  int numPlayers;

  Server({required this.name, required this.numPlayers});

  static Server fromJson(Map<String, dynamic> json) {
    return Server(
      name: json['name'],
      numPlayers: int.parse(json['properties']['numplayers']),
    );
  }
}
