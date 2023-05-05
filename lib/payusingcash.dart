import 'dart:math';

import 'package:flutter/material.dart';

class PayThroughCash extends StatelessWidget {
  int otp = 0;
  @override
  Widget build(BuildContext context) {
    otp = 100000 + Random().nextInt(899999);

    return Scaffold(
      body: AlertDialog(
        title: const Text("Please share this OTP with the Pilot."),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Center(
                child: Text(
              "$otp",
              style: const TextStyle(color: Colors.grey, fontSize: 30),
            )),
          ),
        ],
      ),
    );
  }
}
