import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class RideDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complete"),
      ),
      body: ElevatedButton(
          onPressed: () {
            AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.topSlide,
                    title: "Ride Completed!",
                    btnOkOnPress: () {},
                    btnOkColor: Colors.black)
                .show();
          },
          child: Text(
              "This method will run on ride completion.(Press this button)")),
    );
  }
}
