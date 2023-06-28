import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/utils/constants.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       // primarySwatch: Colors.green,
        primaryColor: ColorConstants.color128C7E
      ),
      home: const HomePage(),
    );
  }
}
