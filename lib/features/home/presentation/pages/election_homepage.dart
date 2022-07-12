import 'package:election_app/features/home/presentation/pages/componets_widgets.dart';
import 'package:flutter/material.dart';

class ElectionHomePage extends StatefulWidget {
  ElectionHomePage({Key? key}) : super(key: key);

  @override
  State<ElectionHomePage> createState() => _ElectionHomePageState();
}

class _ElectionHomePageState extends State<ElectionHomePage> {
  String dropdownvalue = "प्रदेश";
  var items = [
    'प्रदेश 1',
    'प्रदेश',
    'प्रदेश 2',
    'प्रदेश 3',
    'प्रदेश 4',
    'प्रदेश 5',
    'प्रदेश 6',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        // foregroundColor: Colors.white,
        // backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: 150,
              height: 100,
              child: Image.asset('assets/icons/logo.png'),
            ),
            const Spacer(),
            const Text(
              "स्थानीय तहको निर्वाचन २०७९",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          textFieldWithBoX("प्रदेश"),
          textFieldWithBoX("जिल्ला"),
          textFieldWithBoX("नगरपालिका वा गाउँपालिका"),
          textFieldWithBoX("खोज्नुहोस्")
        ],
      ),
    );
  }
}
