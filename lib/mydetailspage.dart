import 'package:flutter/material.dart';
import 'editdetails.dart';

class myDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
            width: 330,
            height: 650,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media.licdn.com/dms/image/C4D03AQFEgVrPvpYgMg/profile-displayphoto-shrink_800_800/0/1661052928309?e=1684368000&v=beta&t=W3TX02QcQtVfSHXbXOhOJQtRaJJ9ozTiQnTRpZNk7yI"),
                    ),
                    accountName: Text("Satyam Kumar"),
                    accountEmail: Text("kumar.satyam.2017004@gmail.com")),
                ListTile(
                  title: Text("Phone"),
                  subtitle: Text("7060988601"),
                ),
                ListTile(
                  title: Text("Pilot Rides"),
                  subtitle: Text("7"),
                ),
                ListTile(
                  title: Text("Passenger Rides"),
                  subtitle: Text("5"),
                ),
              ],
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditDetailsPage(),
              ));
        },
        child: const Icon(Icons.edit),
        backgroundColor: Colors.black,
      ),
    );
  }
}
