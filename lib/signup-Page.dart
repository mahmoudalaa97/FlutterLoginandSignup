import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  final PageController _controller;
  SignupPage(this._controller);
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
              )),
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
          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "CONFIRM PASSWORD",
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
                    "Already have an account?",
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
            margin: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 50),
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
                          "SIGN UP",
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
