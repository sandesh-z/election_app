import 'package:election_app/injection.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/pages/election_homepage.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ElectionHomePage(),
    );
  }
}
