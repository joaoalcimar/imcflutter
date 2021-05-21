import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC Calculator"),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_outline, size: 120, color: Colors.green),
            TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Weight(Kg)",
                    labelStyle: TextStyle(color: Colors.green)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0)),
            TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Height(cm)",
                    labelStyle: TextStyle(color: Colors.green)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0)),
            Container(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Calculate",
                        style: TextStyle(color: Colors.white, fontSize: 25.0)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green))))
          ],
        ),
      ),
    );
  }
}
