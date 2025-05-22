import 'package:flutter/material.dart';

class DietPage extends StatelessWidget {
  const DietPage({super.key});

  @override
  Widget build(BuildContext context) {
    final meals = [
      {'meal': 'Breakfast', 'menu': 'Oatmeal with berries'},
      {'meal': 'Lunch', 'menu': 'Grilled chicken salad'},
      {'meal': 'Dinner', 'menu': 'Salmon with broccoli'},
    ];

    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(meals[index]['meal']!, style: const TextStyle(color: Colors.white)),
        subtitle: Text(meals[index]['menu']!, style: const TextStyle(color: Colors.white70)),
        leading: const Icon(Icons.food_bank, color: Colors.white),
      ),
    );
  }
}
