import 'package:best_caller/CentralPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyCallerId());
}

class MyCallerId extends StatelessWidget {
  const MyCallerId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Caller App',
      debugShowCheckedModeBanner: false,
      home: CentralPage(),
    );
  }
}
