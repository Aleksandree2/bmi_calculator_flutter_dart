import 'package:flutter/material.dart';
import 'input_page.dart';
import 'screen2.dart';

void main() => runApp(BMICalculator());


 class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF0D101F),
          ),

          scaffoldBackgroundColor: const Color(0xFF0D101F),
          ),
      initialRoute: '/rInputPage',
      routes:{
        '/rInputPage' : (context) => InputPage(),
        '/rScreen2' : (context) => Screen2()

      } ,
    );
  }
}

