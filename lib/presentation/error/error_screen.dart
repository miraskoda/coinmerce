import 'package:coinmerce/presentation/others/primary_spacing.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen(this.error, {super.key, this.onRetry});

  final String error;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onRetry,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width / 2, child: const Icon(Icons.image_not_supported)),
          const PrimarySpacing.gapMd(),
          SizedBox(width: MediaQuery.of(context).size.width / 1.2, child: Text(error, textAlign: TextAlign.center)),
          if (onRetry != null) ...[
            const PrimarySpacing.gapMd(),
            const Text('Tap to retry', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
          ],
        ],
      ),
    );
  }
}
