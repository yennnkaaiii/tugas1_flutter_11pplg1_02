import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String? email;
  final String? gender;
  final DateTime? tanggalLahir;

  const ProfilePage({
    super.key,
    required this.username,
    this.email,
    this.gender,
    this.tanggalLahir,
  });

  @override
  Widget build(BuildContext context) {
    String formattedDate = tanggalLahir != null
        ? "${tanggalLahir!.day}-${tanggalLahir!.month}-${tanggalLahir!.year}"
        : "-";

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Profile User",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _buildProfileRow("Username", username),
              _buildProfileRow("Email", email ?? "-"),
              _buildProfileRow("Jenis Kelamin", gender ?? "-"),
              _buildProfileRow("Tanggal Lahir", formattedDate),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              "$label:",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
