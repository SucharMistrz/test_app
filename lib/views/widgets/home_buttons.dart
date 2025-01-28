import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../shared/router/app_router.gr.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.router.push(DetailsRoute(data: 'Currency Exchange Rate'));
          },
          child: const Text('TODO Currency Exchange Rate'),
        ),
        const SizedBox(height: 16), // Adds spacing between the buttons
        ElevatedButton(
          onPressed: () {
            context.router.push(const PrspyRoute());
          },
          child: const Text('PRSpy: Total Players'),
        ),
      ],
    );
  }
}
