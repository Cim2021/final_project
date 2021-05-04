import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: new Column(
        children: [
          Row(
            children: <Widget>[
              SizedBox(
                height: 135,
              ),
              Container(
                width: 140,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/welcomepage.png"),
                )),
              ),
              Text(
                "Hey, Tom",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 33,
              ),
              IconButton(
                icon: Icon(Icons.star),
                iconSize: 45,
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FavoritePage()));
                },
              ),
              SizedBox(
                width: 70,
              ),
              IconButton(
                icon: Icon(Icons.add),
                iconSize: 45,
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CookPage()));
                },
              ),
              SizedBox(
                width: 70,
              ),
              IconButton(
                icon: Icon(Icons.analytics),
                iconSize: 45,
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TrackPage()));
                },
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 70,
              ),
              Text(
                "Progress Today",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Text(
                  "Calorie",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                Slider(
                  min: 0,
                  max: 10,
                  divisions: 5,
                  value: 6,
                  onChanged: null,
                  label: "Subscription Number",
                )
              ],
            ),
            width: 350,
            height: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.green),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 42,
                ),
                Text(
                  "Sugar",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                Slider(
                  min: 0,
                  max: 10,
                  divisions: 5,
                  value: 2,
                  onChanged: null,
                  label: "Subscription Number",
                )
              ],
            ),
            width: 350,
            height: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.green),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Text(
                  "Protein",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                Slider(
                  min: 0,
                  max: 10,
                  divisions: 5,
                  value: 8,
                  onChanged: null,
                  label: "Subscription Number",
                )
              ],
            ),
            width: 350,
            height: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.green),
          ),
        ],
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite Recipes")),
      body: Center(
          child: Column(
        children: [
          Container(
            height: 679,
            padding: EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 12.0,
              children: [
                Image.asset("assets/recipes.png"),
                Image.asset("assets/recipes.png"),
                Image.asset("assets/recipes.png"),
                Image.asset("assets/recipes.png"),
                Image.asset("assets/recipes.png"),
                Image.asset("assets/recipes.png"),
                Image.asset("assets/recipes.png"),
                Image.asset("assets/recipes.png"),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class CookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cook")),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/cookicon.png"),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OptionPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class TrackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tracker")),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}

class OptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        IconButton(icon: Icon(Icons.check_circle_outline), onPressed: null)
      ], title: Text("Options")),
      body: Column(
        children: [
          Text("data"),
        ],
      ),
    );
  }
}
