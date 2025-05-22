import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final workouts = [
      {'name': 'Push-Ups', 'sets': '3 sets of 15 reps'},
      {'name': 'Squats', 'sets': '4 sets of 20 reps'},
      {'name': 'Plank', 'sets': '3 rounds, 60 seconds'},
    ];

    return ListView.builder(
      itemCount: workouts.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(workouts[index]['name']!, style: const TextStyle(color: Colors.white)),
        subtitle: Text(workouts[index]['sets']!, style: const TextStyle(color: Colors.white70)),
        leading: const Icon(Icons.fitness_center, color: Colors.white),
      ),
    );
  }
}
