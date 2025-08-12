import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/controller/football_controller.dart';
import 'package:testflutter/controller/football_edit_controller.dart';
import 'package:testflutter/models/player.dart';
import 'package:testflutter/routes/routes.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});
  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Football Players"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
          itemCount: footballController.players.length,
          itemBuilder: (context, index) {
            final player = footballController.players[index];
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(player.profileImage)),
              onTap: () {
                final editController = Get.put(FootballEditController());
                editController.loadPlayerData(player, index);
                Get.toNamed(AppRoutes.footballEdit);
              },
              title: Text(player.nama),
              subtitle: Text("${player.position} • #${player.nomorPunggung}"),
            );
          },
        )),
      ),
    );
  }
}
