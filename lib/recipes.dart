import 'package:final_project/show.dart';
import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShowRecipes()));
        },
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 50.0,
            children: [
              Image.network(
                'https://images.themodernproper.com/billowy-turkey/production/posts/2019/Chicken-Picatta-8.jpg?w=1200&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1599767276&s=2aa0bf00be2c34de44c1fb93a32ca68f',
              ),
              Text(
                'Piccata describes meat, usually veal or chicken, that is sliced, dredged in flour, browned, then served in a sauce containing lemon juice, butter, and capers.',
                style: TextStyle(fontSize: 15),
              ),
              Image.network(
                  'https://images.themodernproper.com/billowy-turkey/production/posts/2020/Creamy-Tomato-Chicken-Skillet-11.jpg?w=1200&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1599768537&s=7f47312bc3ecd09e7a456c3c946e3872'),
              Text(
                'This Tomato Basil Chicken Skillet combines flavorful seared chicken breasts simmered to tender with a rich tomato basil sauce that couldn’t be EASIER to make! This dinner can go from fridge to fork in as little as 20 minutes and uses only ONE skillet to cook!',
                style: TextStyle(fontSize: 15),
              ),
              Image.network(
                  'https://images.themodernproper.com/billowy-turkey/production/posts/2021/Butter-Chicken-16.jpg?w=1067&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1612504134&s=25e9b433ba30041e0f4b55202d600fb3'),
              Text(
                'How to Make Butter Chicken on the Stovetop. Sauté onions, garlic and ginger for a few minutes. Stir in butter, stock, tomato paste, all of the spices—the flavorful base of the butter chicken sauce! Pop a lid on the pan and simmer until the chicken is done.',
                style: TextStyle(fontSize: 15),
              ),
              Image.network(
                  'https://images.themodernproper.com/billowy-turkey/production/posts/2017/One-Pan-Honey-Mustard-Chicken-11.jpg?w=1200&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&dm=1599770763&s=b944127346a905915177143d7b416e23'),
              Text(
                'Spread vegetables out on a baking sheet in a single layer. Place chicken breasts on top of vegetables. In a small bowl, add honey, stone ground mustard, olive oil, dijon mustard, balsamic vinegar, fresh thyme, garlic powder, salt, and pepper. Using a whisk, stir everything together to form a sauce',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
