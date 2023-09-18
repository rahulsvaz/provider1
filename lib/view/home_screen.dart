import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/view_model/count_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    final count = Provider.of<CounterProvider>(context,listen: true);
    return Scaffold(
      body: Center(
        child: Text(count.count.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        count.addCount();
      }),
    );
  }
}
