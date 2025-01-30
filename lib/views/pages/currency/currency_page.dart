import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CurrencyPage extends StatelessWidget {
  final String data;

  const CurrencyPage({@PathParam('data') required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Page')),
      body: Center(
        child: Text(data, style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
