import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipe;

  DetailsScreen({required this.recipe});

  final Map<String, String> recipeDetails = {
    'Taco': 'Ingredients: Tortilla, beef, lettuce, cheese, salsa.\nInstructions: Cook beef, assemble ingredients in tortilla, and serve.',
    'Sandwich': 'Ingredients: Bread, ham, cheese, lettuce, tomato.\nInstructions: Stack ingredients between slices of bread and serve.',
    'Cake': 'Ingredients: Flour, sugar, eggs, butter, baking powder.\nInstructions: Mix ingredients, bake at 350°F for 30 minutes, and cool before serving.',
    'Cookie': 'Ingredients: Flour, sugar, butter, chocolate chips, eggs.\nInstructions: Mix ingredients, scoop onto tray, bake at 350°F for 12 minutes.',
    'Soup': 'Ingredients: Broth, vegetables, chicken, salt, pepper.\nInstructions: Simmer all ingredients in a pot for 30 minutes and serve hot.'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$recipe Recipe')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(recipeDetails[recipe] ?? 'Recipe details not found.',
                style: TextStyle(fontSize: 16.0)),
            SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
