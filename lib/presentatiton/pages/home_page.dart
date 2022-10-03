import 'package:flutter/material.dart';
import 'package:food_haccp/presentatiton/widgets/index.dart';
import 'package:food_haccp/config/themes/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Text("Hello Sangvaleap!", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Text("Find Your Meals", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: SearchBox(hint: "", suffix: Icon(Icons.search, color: darker),)
          ),
        ],
      ),
    );
  }
}
