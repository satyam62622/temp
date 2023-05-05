import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'payusingcash.dart';

class RideCompletePayments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        "How do you want to pay for the ride?",
        style: TextStyle(color: Colors.black),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Center(
            child: Text("Please Select a Payment Method",
                style: TextStyle(
                    color: Color.fromARGB(255, 197, 195, 195), fontSize: 15)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance_wallet_outlined,
                size: 45, color: Colors.black),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: Text("BharatRide Wallet"),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.money, size: 50, color: Colors.teal),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PayThroughCash()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.teal),
                child: Text(" Pay Using CASH "),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.currency_rupee_rounded,
                  size: 45, color: Colors.orange),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  child: Text(" UPI Transaction  "),
                ),
              )
            ],
          ),
        ),
      ],
    )));
  }
}
