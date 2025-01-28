import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/controllers/server_controller.dart';
import 'prspy/server_view.dart';

@RoutePage()
class PrspyScreen extends StatelessWidget {
  const PrspyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PRspy Screen')),
      body: BlocProvider(
        create: (_) => ServerCubit()..loadServers(),
        child: const ServerList(),
      ),
    );
  }
}
