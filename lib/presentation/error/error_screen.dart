import 'package:coinmerce/presentation/others/primary_spacing.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen(this.error, {super.key});
  final String error;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TO-DO: Implement retry logic
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width / 2, child: const Icon(Icons.close)),
          const PrimarySpacing.gapMd(),
          SizedBox(width: MediaQuery.of(context).size.width / 1.2, child: Text(error, textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}
