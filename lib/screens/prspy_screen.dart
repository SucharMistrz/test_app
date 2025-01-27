import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/server_cubit.dart';
import '../view/server_list.dart';
import 'package:auto_route/auto_route.dart';

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
