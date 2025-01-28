import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  final String data;

  const DetailsScreen({super.key, @PathParam('data') required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Text(data, style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
