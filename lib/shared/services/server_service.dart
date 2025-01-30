import 'dart:convert';
import 'package:hello_world/shared/models/server_model.dart';
import 'package:http/http.dart' as http;

class ServerService {
  static const String url = 'https://servers.realitymod.com/api/ServerInfo';

  static Future<List<ServerModel>> fetchServers() async {
    try {
      final http.Response response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        
        final List<dynamic> serverList = (jsonDecode(response.body) as Map<String, dynamic>)['servers'] as List<dynamic>;
        
        return serverList.map((dynamic server) => ServerModel.fromJson(server as Map<String, dynamic>)).toList();
        
      } else {
        throw Exception('Failed to load server data');
      }
    } catch (e) {
      print('Error fetching data: $e');
      return <ServerModel>[];
    }
  }
}
