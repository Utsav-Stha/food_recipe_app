import 'package:flutter/material.dart';
import 'package:food_recipe_app/core/widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu_rounded),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'Food Recipe',
                style: TextStyle(
                  wordSpacing: 4.0,
                  letterSpacing: 2.0,
                ),
              )
            ],
          ),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return RecipeCard();
          },
        ));
  }
}
