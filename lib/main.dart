import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hudle/getit.dart';
import 'package:hudle/screens/homePage.dart';


void main() async{
setup();
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Breaking Bad',
        home: const  HomePage()
        );
  }
}
