import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/component/input_field.dart';
import 'package:testflutter/controller/football_edit_controller.dart';

class FootballEditPage extends StatelessWidget {
  FootballEditPage({super.key});
  final FootballEditController editController = Get.find<FootballEditController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            InputField(label: "Profile Image URL", controller: editController.imageController),
            InputField(label: "Nama", controller: editController.namaController),
            InputField(label: "Position", controller: editController.positionController),
            InputField(label: "Nomor Punggung", controller: editController.nomorController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                editController.savePlayer();
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
