import 'package:get/get.dart';
import 'package:testflutter/models/player.dart';

class FootballController extends GetxController {
  var players = <Player>[
    Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQysBVyu58pnAeJM63DIJCId1Kf4DrLTLbtsA&s', nama: "Soekarno", position: "Forward", nomorPunggung: 7),
    Player(profileImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/President_Suharto%2C_1993.jpg/250px-President_Suharto%2C_1993.jpg', nama: "Soeharto", position: "Midfielder", nomorPunggung: 10),
    Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6i4nKuChXSlVzeclFWyKar185clP4q7YA9Q&s', nama: "Habibie", position: "Forward", nomorPunggung: 30),
    Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA4QAtgUoE_EyNdNH6V7UniZUvbcGrgy4yRQ&s', nama: "Abdurrahman", position: "Defender", nomorPunggung: 4),
    Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ93HMHsJsPHeJ-YYpzoz58blprbD-kn5HqfQ&s', nama: "Megawatti", position: "Goalkeeper", nomorPunggung: 1),
    Player(profileImage: 'https://upload.wikimedia.org/wikipedia/map-bms/thumb/1/1a/Susilo_Bambang_Yudhoyono_official_presidential_portrait_2009.jpg/250px-Susilo_Bambang_Yudhoyono_official_presidential_portrait_2009.jpg', nama: "Susilo", position: "Midfielder", nomorPunggung: 8),
    Player(profileImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Joko_Widodo_2019_official_portrait.jpg/250px-Joko_Widodo_2019_official_portrait.jpg', nama: "Jokowi", position: "Forward", nomorPunggung: 9),
    Player(profileImage: 'https://indonesia.go.id/assets/img/president/259203909_39183918RI2A1.jpg', nama: "Prabowo", position: "Defender", nomorPunggung: 5),
  ].obs;

  void updatePlayer(int index, Player newPlayer) {
    players[index] = newPlayer;
  }
}
