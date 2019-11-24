import 'package:flutter/material.dart';
import 'package:flutter_training/homepage/homepage.dart';
import 'package:flutter_training/trendingpage/trendingpage.ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.aspectRatio * 200,
              child: Image.asset('assets/images/logo.png'),
              backgroundColor: Colors.black,
            ),
          ),
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email Id',
                prefixIcon: Icon(FontAwesomeIcons.envelope),
                border: OutlineInputBorder(),
                helperText: check == true ? "" : "Wrong credentials !!",
              ),
              keyboardType: TextInputType.emailAddress,
              controller: username,
            ),
          ),
          SizedBox(
            height: 08,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(FontAwesomeIcons.lock),
                border: OutlineInputBorder(),
                helperText: check == true ? "" : "Wrong credentials !!",
                suffixIcon: IconButton(
                  icon: _obscure == true
                      ? Icon(FontAwesomeIcons.eyeSlash)
                      : Icon(FontAwesomeIcons.eye),
                  onPressed: () {
                    setState(
                      () {
                        _obscure = !_obscure;
                      },
                    );
                  },
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: _obscure == true ? false : true,
              controller: password,
            ),
          ),
          Divider(
            color: Colors.transparent,
            height: 40.0,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.teal)),
              elevation: 20.0,
              colorBrightness: Brightness.light,
              onPressed: () {
                if (username.text ==
                        "admin@gmail.com" && //and we will check both of them
                    password.text == "admin") {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                } else {
                  print("sorry you have entereed wrong credentials");
                  setState(() {
                    check = false;
                    //changing the state of the textfield when i input wrong credetials through it
                    username.text = "";
                    password.text = "";
                  });
                }
              },
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Hire Me',
                style: TextStyle(
                    fontSize: 25.0, color: Colors.teal, fontFamily: 'Pacifico'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final username = TextEditingController();
  final password = TextEditingController();
  bool check = true;
}
