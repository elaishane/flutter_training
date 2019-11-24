import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_training/trendingpage/trendingpage.ui.dart';
import 'package:flutter_training/homepage/homepage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final name = CircleAvatar(
      radius: 72.0,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage('assets/images/logo.png'),
    );

    final welcomeText = Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Center(
            child: Text(
              'Welcome!!!\nElai Shane',
              style: TextStyle(
                fontSize: 45.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

    final bodyText = Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        'Welcome to our Commuity. We are happy to welcome you to our community .It is a community to learn,explore and gain knowledge.\n We at "WiseKreator" work with a vision to bring our members Idea`s into Reality and that is our mission',
        style: TextStyle(fontSize: 25.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[
          Expanded(child: name),
          Expanded(child: welcomeText),
          Expanded(child: bodyText),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              accountEmail: Text(
                "admin@gmail.com",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              accountName: Text(
                "Elai Shane",
                style: TextStyle(fontFamily: 'Pacifico', fontSize: 25.0),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: AssetImage("assets/images/logo.png"),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.home),
              title: Text(
                "Home Page",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              trailing: Icon(Icons.trending_up),
              title: Text(
                "Trending Page",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TrendingPage()));
              },
            )
          ],
        ),
      ),

//      resizeToAvoidBottomPadding: true,
//      resizeToAvoidBottomInset: true,
      body: Center(child: body),
//      primary: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          icon: Icon(FontAwesomeIcons.signOutAlt),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/LoginScreen');
          },
        ),
      ),
    );
  }
}
