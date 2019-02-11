import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final PageController _controller;
  LoginPage(this._controller);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(80),
            child: Icon(
              Icons.computer,
              color: Color(0xff91d59e),
              size: 50,
            ),
          ),
          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "EMAIL",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff91d59e),
                      fontSize: 15),
                ),
              ),
            ),
          ]),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 40, right: 40, top: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Color(0xff91d59e),
                      width: 0.5,
                      style: BorderStyle.solid)),
            ),
            padding: EdgeInsets.only(left: 0, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                    child: TextField(
                  obscureText: false,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'freelancer@freelancer.com',
                      hintStyle: TextStyle(color: Colors.grey)),
                ))
              ],
            ),
          ),
          Divider(
            height: 24,
          ),
          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "PASSWORD",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff91d59e),
                      fontSize: 15),
                ),
              ),
            ),
          ]),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 40, right: 40, top: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Color(0xff91d59e),
                      width: 0.5,
                      style: BorderStyle.solid)),
            ),
            padding: EdgeInsets.only(left: 0, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                    child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '**********',
                      hintStyle: TextStyle(color: Colors.grey)),
                ))
              ],
            ),
          ),
          Divider(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Color(0xff91d59e),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.end,
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                  onPressed: () =>_goToHomePage(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color(0xff91d59e),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.25),
                  ),
                )),
                Text(
                  "OR CONNECT WITH",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.25),
                  ),
                )),
              ],
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(
                left: 30.0, right: 30.0, top: 20.0, bottom: 20),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.only(right: 8.0),
                    alignment: Alignment.center,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new FlatButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            color: Color(0Xff3B5998),
                            onPressed: () => {},
                            child: new Container(
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Expanded(
                                    child: new FlatButton(
                                      onPressed: () => {},
                                      padding: EdgeInsets.only(
                                        top: 20.0,
                                        bottom: 20.0,
                                      ),
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Icon(
                                            const IconData(0xea90,
                                                fontFamily: 'icomoon'),
                                            color: Colors.white,
                                            size: 15.0,
                                          ),
                                          Text(
                                            "FACEBOOK",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.center,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new FlatButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            color: Color(0Xffdb3236),
                            onPressed: () => {},
                            child: new Container(
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Expanded(
                                    child: new FlatButton(
                                      onPressed: () => {},
                                      padding: EdgeInsets.only(
                                        top: 20.0,
                                        bottom: 20.0,
                                      ),
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Icon(
                                            const IconData(0xea88,
                                                fontFamily: 'icomoon'),
                                            color: Colors.white,
                                            size: 15.0,
                                          ),
                                          Text(
                                            "GOOGLE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _goToHomePage() {
    _controller.animateToPage(
      1,
      duration: Duration(milliseconds: 800),
      curve: Curves.easeIn,
    );
  }
}
