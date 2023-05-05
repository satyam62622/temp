import 'package:bharatride_drawer/ridecompleted.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'homepage.dart';
import 'ridecompletepay.dart';
import 'ridecompleted.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

// var data;
// var name = "Satyam Kumar";

class _LoginPageState extends State<LoginPage> {
  //to take phone number as input:
  final _phoneInput = TextEditingController();

  // Future printdata() async {
  //   var response = await http.get(Uri.parse(
  //       'https://coral-app-cer48.ondigitalocean.app/roles/sendData/hiringData'));

  //   if (response.statusCode == 200) {
  //     data = jsonDecode(response.body);
  //     setState(() {
  //       name = data[1]['name'];
  //     });
  //   }
  //   print(data[1]['name']);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login or SignUp"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _phoneInput,
                  decoration: InputDecoration(hintText: "Phone Number"),
                  keyboardType: TextInputType.phone,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Text('Next')),

              //////////////////////////////
              ///printing the input phone number:
              ElevatedButton(
                  onPressed: () {
                    print(_phoneInput.text);
                    //print(data[1]['name']);
                  },
                  child: Text('Print Phone')),
              /////////////////////////////

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RideCompletePayments(),
                        ));
                  },
                  child: Text('Pay after ride')),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RideDone(),
                        ));
                  },
                  child: Text('Ride Complete')),
            ],
          ),
        ));
  }
}
