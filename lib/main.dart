import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purple[500],
        buttonColor: Colors.purple[500],
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: DecoratedBox(
        child: Container(
          color: Color.fromRGBO(177, 32, 64, 0.3),
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 216, bottom: 8),
                child: Center(
                  child: Text(
                    'logo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 64),
                child: Center(
                  child: Text(
                    'nononono nono non ononono nonono',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              RaisedButton(
                child: Text('Sign In'),
                textColor: Colors.white,
                onPressed: () => {},
              ),
              RaisedButton(
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'images/facebook_logo.svg',
                      color: Colors.white,
                      height: 18,
                    ),
                    Expanded(
                      child: Center(
                        child: Text('Sign in with facebook'),
                      ),
                    ),
                  ],
                ),
                color: Color.fromRGBO(59, 89, 152, 1),
                textColor: Colors.white,
                onPressed: () => {},
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: FlatButton(
                        child: Text('Sign Up'),
                        textColor: Colors.white,
                        onPressed: () => {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: FlatButton(
                        child: Text('I forgot password?'),
                        textColor: Colors.white,
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
