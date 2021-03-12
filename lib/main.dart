import 'package:flutter/material.dart';

// void main(){
//   runApp(flutter_love());
// }

void main() => runApp(FlutterLove());

class FlutterLove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Text('Body!!!!!'),
      ),
    );
  }
}
