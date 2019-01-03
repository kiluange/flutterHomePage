import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.purple,
                  ),
                  Positioned(
                    bottom: 50,
                    right: 150,
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(200))),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 200,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(150))),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(16),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                  style: BorderStyle.solid,
                                ),
                                image: DecorationImage(
                                  image: AssetImage('images/bg.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(16),
                            child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 32,
                              ),
                              onPressed: (){
                                _scaffoldKey.currentState.openEndDrawer();
                              }
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16,top: 32),
                        child: Text(
                          'Hello, Kiluange',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16,top: 16,bottom: 16),
                        child: Text(
                          'Where do you want to go?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32
                          ),
                        ),
                      ),                      
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          elevation: 4,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.purple[500],
                                size: 30,
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
