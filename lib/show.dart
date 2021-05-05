import 'package:flutter/material.dart';

class ShowRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken Piccata'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.network(
              'https://www.barbarabakes.com/wp-content/uploads/2016/07/Chicken-Piccata-With-Pasta-Barbara-Bakes-735x490.jpg',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Method',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '1. Season the chicken with 2 teaspoons salt and pepper on both sides. Place the flour on a plate. Dredge the chicken in the flour and shake off any excess. Discard the flour when finished dredging.',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '2. Heat 3 tablespoons butter and 2 tablespoons oil in a large skillet set over medium-high until the butter has melted.',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '3. Working in batches, taking care not to crowd the pan, add ½ the chicken and sauté until golden brown, about 2 ½ - 3 minutes per side, until cooked through. Set the chicken aside on a plate when they finish cooking.',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '4. Add 3 more tablespoons of butter and 2 more tablespoons of olive oil and finish cooking the 2nd batch of chicken.',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '5. Add the shallot to the pan drippings and sauté until soft and fragrant, about 1 minute. Add garlic and saute for 1 minute longer.',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '6. Add the stock and simmer until reduced by half, about 4-5 minutes.',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '7. Reduce heat to low, then stir in the remaining 4 tablespoons butter, capers, lemon juice, and zest to taste. Season with remaining ½ teaspoon of salt. Garnish with parsley if using.',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              '8. Serve the chicken with the piccata sauce poured over the top of the pan-fried chicken, alongside your favorite pasta or salad.',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
