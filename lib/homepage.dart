import 'package:flutter/material.dart';
import 'mydetailspage.dart';
import 'helpfeedback.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.black,
        actions: const <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.account_balance_wallet_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/C4D03AQFEgVrPvpYgMg/profile-displayphoto-shrink_800_800/0/1661052928309?e=1684368000&v=beta&t=W3TX02QcQtVfSHXbXOhOJQtRaJJ9ozTiQnTRpZNk7yI"),
              ),
              accountName: Text("Satyam Kumar"),
              accountEmail: Text("kumar.satyam.2017004@gmail.com"),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myDetailsPage(),
                      ));
                },
                child: drawerItem("My Details", Icons.person)),
            // drawerItem("Security", Icons.safety_check),
            // drawerItem("Settings", Icons.settings),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => FeedBackPage())));
                },
                child: drawerItem("Help & Feedback", Icons.help_center)),
            drawerItem("Report an issue", Icons.report),
            drawerItem("Log Out", Icons.logout)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("This is your HomePage."),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile drawerItem(String tiletitle, IconData tileleadingIcon) {
    return ListTile(
      title: Text(tiletitle),
      leading: Icon(tileleadingIcon),
    );
  }
}
