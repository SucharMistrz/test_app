import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/views/widgets/home_buttons.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: const Center(
        child: HomeButtons(),
      ),
    );
  }
}
