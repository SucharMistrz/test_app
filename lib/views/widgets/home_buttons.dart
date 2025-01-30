import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/shared/router/app_router.gr.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            context.router.push(CurrencyRoute(data: 'Currency Exchange Rate'));
          },
          child: const Text('TODO Currency Exchange Rate'),
        ),
        const SizedBox(height: 16), // Adds spacing between the buttons
        ElevatedButton(
          onPressed: () {
            context.router.push(PrspyRoute(data: 'PRSpy: Total Players'));
          },
          child: const Text('PRSpy: Total Players'),
        ),
      ],
    );
  }
}
