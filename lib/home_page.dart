import 'package:flutter/material.dart';
import 'package:loginandsignup/login-page.dart';
import 'package:loginandsignup/signup-Page.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  PageController _controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      physics: PageScrollPhysics(),
      children: <Widget>[SignupPage(_controller), Home(_controller),LoginPage(_controller), ],
    ));
  }
}

class Home extends StatelessWidget {
  final PageController _pageController;

  Home(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Color(0xff91d59e),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: AssetImage("img/background.jpg"),
              fit: BoxFit.fill)),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 220),
            child: Center(
              child: Icon(
                Icons.computer,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "FreeLancer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "App",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 30, right: 30, top: 120),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () =>_goToSignupPage(),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Container(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.white,
                    onPressed: () => _goToLoginPage(),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Container(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Color(0xff91d59e),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _goToLoginPage() {
    _pageController.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }
  _goToSignupPage() {
    _pageController.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }
}
