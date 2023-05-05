import 'package:flutter/material.dart';

class EditDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(
                              "https://media.licdn.com/dms/image/C4D03AQFEgVrPvpYgMg/profile-displayphoto-shrink_800_800/0/1661052928309?e=1684368000&v=beta&t=W3TX02QcQtVfSHXbXOhOJQtRaJJ9ozTiQnTRpZNk7yI"),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed:
                                  () {}, //This function is yet to be defined.
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: TextEditingController(
                          text: "Satyam Kumar"), //HardCoded
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          helperText: "Edit Name", //HardCoded!!! Yet to vary.
                          //hintText: "Satyam Kumar",
                          //labelText: "Edit Name",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: TextEditingController(
                          text: "kumar.satyam.2017004@gmail.com"), //HardCoded
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          helperText: "Edit Email", //HardCoded!!! Yet to vary.
                          //hintText: "Satyam Kumar",
                          //labelText: "Edit Name",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Save"), //notDefined !!
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
