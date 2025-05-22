import 'package:flutter/material.dart';

class MotivationPage extends StatelessWidget {
  const MotivationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final quotes = [
      'Push yourself, because no one else is going to do it for you.',
      'Success starts with self-discipline.',
      'The pain you feel today will be the strength you feel tomorrow.',
    ];

    return ListView.builder(
      itemCount: quotes.length,
      itemBuilder: (context, index) => ListTile(
        title: Text('"${quotes[index]}"', style: const TextStyle(color: Colors.white)),
        leading: const Icon(Icons.psychology, color: Colors.white),
      ),
    );
  }
}
