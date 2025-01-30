import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/bloc/controllers/server_controller.dart';
import 'package:hello_world/views/pages/prspy/prspy_server_list.dart';

@RoutePage()
class PrspyPage extends StatefulWidget {
  final String data;

  const PrspyPage({@PathParam('data') required this.data, super.key});

  @override
  _PrspyPageState createState() => _PrspyPageState();
}

class _PrspyPageState extends State<PrspyPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRSpy'), // Title of your existing page
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // When the refresh button is pressed, reload servers
              BlocProvider.of<ServerController>(context).loadServers();
            },
          ),
        ],
      ),
      body: BlocProvider<ServerController>(
        create: (_) => ServerController()..loadServers(),
        child: const ServerList(),
      ),
    );
  }
}
