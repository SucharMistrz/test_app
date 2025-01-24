import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

@RoutePage()
class PrspyScreen extends StatefulWidget {
  final String data;

  const PrspyScreen({super.key, @PathParam('data') required this.data});

  @override
  _PrspyScreenState createState() => _PrspyScreenState();
}

class _PrspyScreenState extends State<PrspyScreen> {
  int totalPlayers = 0;
  
  Future<void> calculateTotalPlayers() async {
    const url = 'https://servers.realitymod.com/api/ServerInfo'; 

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var map = jsonDecode(response.body);

        int total = 0;

        for (var server in map['servers']) {
          var properties = server['properties'];

          if (properties != null && properties['numplayers'] != null) {
            total += int.parse(properties['numplayers']);
          }
        }

        setState(() {
          totalPlayers = total;
        });
      } else {
        throw Exception('Failed to load server data');
      }
    } catch (e) {
      print('Error fetching data: $e');
      
      setState(() {
        totalPlayers = -1; 
      });
    }
  }

  @override
  void initState() {
    super.initState();
    calculateTotalPlayers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PRspy Screen')),
      body: Center(
        child: totalPlayers == 0
            ? const CircularProgressIndicator()  // Loading indicator
            : Text(
          'Total Players: $totalPlayers',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
