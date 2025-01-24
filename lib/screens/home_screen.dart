import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/app_router.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.push(DetailsRoute(data: 'Currency Exchange Rate'));
              },
              child: const Text('TODO Currency Exchange Rate'),
            ),
            const SizedBox(width: 16), // Adds spacing between the buttons
            ElevatedButton(
              onPressed: () {
                context.router.push(PrspyRoute(data: 'PRSpy Data Data'));
              },
              child: const Text('PRSpy: Total Players'),
            ),
          ],
        ),
      ),
    );
  }
}
