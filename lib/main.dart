import 'package:final_project/home.dart';
import 'package:final_project/search.dart';
import 'package:final_project/share.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: WelcomePage()));
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/welcomepage.png"),
        )),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(
              "SPROUT",
              style: TextStyle(
                fontSize: 44,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 600),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
              ),
              child: Text(
                "Grow with us",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  final myAccount = TextEditingController();
  final myPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Image.asset("assets/loginpage.png"),
          Text(""),
          Container(
            width: 300,
            height: 50,
            child: TextField(
              controller: myAccount,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
                hintText: "Username",
              ),
            ),
          ),
          Text(""),
          Container(
            width: 300,
            height: 50,
            child: TextField(
              controller: myPassword,
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
                hintText: "Password",
              ),
            ),
          ),
          Text(""),
          Container(
            width: 300,
            height: 50,
            child: RaisedButton(
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
              textColor: Colors.white,
              elevation: 20,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ),
        ],
      )),
    );
  }
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Tab Bar: Bottom Sheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTabIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  Widget _selectTab() {
    switch (_selectedTabIndex) {
      case 0:
        return homePage();
      case 1:
        return searchPage();
      case 2:
        return sharePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectTab(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'share',
          ),
        ],
      ),
    );
  }
}
