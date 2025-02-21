import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> recipes = [
    'Taco',
    'Sandwich',
    'Cake',
    'Cookie',
    'Soup'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: recipes.map((recipe) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
              child: Text(recipe),
            ),
          );
        }).toList(),
      ),
    );
  }
}