import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final metrics = [
      {'label': 'Weight', 'value': '64 kg'},
      {'label': 'Body Fat %', 'value': '35%'},
      {'label': 'Muscle Mass', 'value': '60%'},
    ];

    return ListView.builder(
      itemCount: metrics.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(metrics[index]['label']!, style: const TextStyle(color: Colors.white)),
        trailing: Text(metrics[index]['value']!, style: const TextStyle(color: Colors.white)),
        leading: const Icon(Icons.show_chart, color: Colors.white),
      ),
    );
  }
}
