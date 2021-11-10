import 'package:flutter/material.dart';
import 'package:inmobiliaria/Login/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));


    return Scaffold(
      body: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(padding: new EdgeInsets.all(25.0)),
                MaterialButton(
                  minWidth: 300.0,
                  height: 120.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  padding: EdgeInsets.all(45),
                  color: Colors.lightBlue.shade200,
                ),
                Padding(padding: new EdgeInsets.all(10.0)),
                Text("Herramienta para broker"),
                Padding(padding: new EdgeInsets.all(10.0)),
                MaterialButton(
                  minWidth: 300.0,
                  height: 120.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  padding: EdgeInsets.all(45),
                  color: Colors.blue.shade200,
                ),
                Padding(padding: new EdgeInsets.all(10.0)),
                Text("Agente Blis"),
                Padding(padding: new EdgeInsets.all(10.0)),
                MaterialButton(
                  minWidth: 300.0,
                  height: 120.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  padding: EdgeInsets.all(45),
                  color: Colors.green.shade300,
                ),
                Padding(padding: new EdgeInsets.all(10.0)),
                Text("Agente invitado"),
              ],
            ),
          ),
        ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}