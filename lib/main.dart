import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyStatelessWidget(),
  ));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Stateless Widget")),
        body: new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new MyCard(
                    title: new Text(
                      "BURGER",
                      style: new TextStyle(fontSize: 22.0),
                    ),
                    icone: new Icon(Icons.fastfood,
                        size: 40.0, color: Colors.redAccent)),
                new MyCard(
                    title: new Text("FILE"),
                    icone: new Icon(Icons.receipt,
                        size: 40.0, color: Colors.yellow)),
              ],
            )
        )
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icone});
  final Widget title;
  final Widget icone;

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                padding: new EdgeInsets.all(20.0),
                child: new Column(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.only(
                          top: 0.0, left: 0.0, bottom: 30.0),
                      child: this.title,
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, left: 10.0, bottom: 0.0),
                      child: this.icone,
                    ),
                  ],
                )
            )
        )
    );
  }
}
