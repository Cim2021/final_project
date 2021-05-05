import 'package:final_project/recipes.dart';
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
                      MaterialPageRoute(builder: (context) => MyHomePage()));
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
              context, MaterialPageRoute(builder: (context) => MyHomePage1()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _TrackPage createState() => _TrackPage();
}

class MyHomePage1 extends StatefulWidget {
  MyHomePage1({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _OptionPage createState() => _OptionPage();
}

class _TrackPage extends State<MyHomePage> {
  DateTime dayPicker = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tracker")),
      body: Center(
        child: Column(
          children: [
            MonthPicker(
              selectedDate: (dayPicker),
              onChanged: (time) {
                setState(() {
                  dayPicker = time;
                });
              },
              firstDate: DateTime(2000, 1),
              lastDate: DateTime(2100, 12),
            ),
            SizedBox(
              height: 15,
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
                    value: 10,
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
              height: 15,
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
            SizedBox(
              height: 15,
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
                    value: 0,
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
      ),
    );
  }
}

class _OptionPage extends State<MyHomePage1> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check_circle_outline),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Recipes()));
            },
          )
        ],
        title: Text("Options"),
      ),
      body: Column(
        children: [
          Text(
            "Meats",
            style: TextStyle(
              fontSize: 30,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: new Text(" Steak "),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Chicken"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Fish"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
            ],
          ),
          Text(
            "Veggies",
            style: TextStyle(
              fontSize: 30,
              color: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: new Text("Asparagus"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Broccoli"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Cauliflower"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: new Text("Carrots"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Celery"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Garlic"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: new Text("Lettuce"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Spinach"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Sweetcorn"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
            ],
          ),
          Text(
            "Fruits",
            style: TextStyle(
              fontSize: 30,
              color: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: new Text("BlueBerry"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("PineApple"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Grape"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: new Text("Peach"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Orange"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Cherry"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: new Text("Banana"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Strawberry"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                  child: new Text("Apple"),
                  textColor: Colors.white,
                  color: _hasBeenPressed ? Colors.blueGrey : Colors.green,
                  onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      }),
            ],
          ),
        ],
      ),
    );
  }
}
