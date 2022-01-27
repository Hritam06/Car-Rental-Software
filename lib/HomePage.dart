import 'package:flutter/material.dart'
    show
        AppBar,
        //BorderRadius,
        //BoxDecoration,
        BuildContext,
        Center,
        Colors,
        //Container,
        Key,
        //Navigator,
        Scaffold,
        State,
        StatefulWidget,
        Text,
        //TextButton,
        TextStyle,
        Widget;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Welcome Manager',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}
