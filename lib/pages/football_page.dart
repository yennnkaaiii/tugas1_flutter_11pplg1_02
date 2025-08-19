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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.offAllNamed(AppRoutes.calculator);
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              final Player player = footballController.players[index];

              return Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(player.profileImage),
                  ),
                  title: Text(
                    player.nama,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("${player.position} • #${player.nomorPunggung}"),
                  onTap: () {
                    final editController = Get.put(FootballEditController());
                    editController.loadPlayerData(player, index);
                    Get.toNamed(AppRoutes.footballEdit);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
