import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/view/home_screen.dart';
import 'package:provider1/view_model/count_provider.dart';

void main() {
  runApp(MultiProvider(
   providers:  [
    ChangeNotifierProvider(create: ((context) => CounterProvider()))
   ],
    
    child: const MyApp()));
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return const MaterialApp(
      home:HomeScreen()
    );
  }
}
