import 'package:flutter/material.dart';
import 'halffilledicon.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HalfFilledIcon(
            icon: Icons.directions_bike, size: 80, color: Colors.amber),
      ),
    );
  }
}
