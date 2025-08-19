import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testflutter/widgets/widgets_textField.dart';
import 'package:testflutter/widgets/widgets_button.dart';
import 'package:testflutter/routes/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController controllerUsername = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  String statusLogin = "";
  bool isPasswordHidden = true; 

  void login() {
    if (controllerUsername.text == "admin" &&
        controllerPassword.text == "admin") {
      setState(() {
        statusLogin = "Login sukses";
      });

      // Kirim data lengkap user ke HomePage
      Get.offNamed(
        AppRoutes.home,
        arguments: {
          "username": controllerUsername.text,
          "email": "admin@example.com",
          "gender": "Laki-laki",
          "tanggalLahir": DateTime(2000, 1, 1), // DateTime langsung
        },
      );
    } else {
      setState(() {
        statusLogin = "Login gagal, coba lagi!";
        controllerUsername.clear(); 
        controllerPassword.clear(); 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to our first App",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("Please login using your username and password"),
            const SizedBox(height: 15),

            Center(
              child: Image.asset(
                'assets/images/logoortu.jpeg',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),

            // Input username
            MyTextField(
              textEditingController: controllerUsername,
              labelText: "Input Username",
            ),
            const SizedBox(height: 15),

            // Input password dengan show/hide
            TextField(
              controller: controllerPassword,
              obscureText: isPasswordHidden,
              decoration: InputDecoration(
                labelText: "Input Password",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordHidden = !isPasswordHidden;
                    });
                  },
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Tombol login
            Center(
              child: CustomButton(
                text: "Login",
                textColor: Colors.blue,
                onPressed: login,
              ),
            ),

            const SizedBox(height: 15),

            // Tombol register
            Center(
              child: CustomButton(
                text: "Register",
                textColor: Colors.green,
                onPressed: () {
                  Get.toNamed(AppRoutes.register);
                },
              ),
            ),

            const SizedBox(height: 20),
            Text(
              statusLogin,
              style: TextStyle(
                color: statusLogin.contains("sukses") ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
