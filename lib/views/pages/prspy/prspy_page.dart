import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/bloc/server_cubit/server_cubit.dart';
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
  Widget build(BuildContext context) {
    return BlocProvider<ServerCubit>(
      create: (_) => ServerCubit()..loadServers(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PRSpy'),
        ),
        body: const PrspyServerList(),
      ),
    );
  }
}
