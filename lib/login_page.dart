import 'package:flutter/material.dart';
import 'package:testflutter/register_Page.dart';
import 'package:testflutter/main_menu.dart';
import 'package:testflutter/global.dart' as globals;


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Declare TextEditingController for username and password
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String statusLogin = "Login Status";

  // Helper function to show a SnackBar
  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2), // How long the snackbar is visible
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to our first app!", style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),),
            Text("Please using your email and password!"),
            SizedBox(height: 20,),
            Center(
              child: Image.asset('assets/images/logoortu.jpeg', 
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder()
                ),
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
            Center(
  child: Column(
    children: [
      ElevatedButton(
  onPressed: () {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    if ((username == 'diki' && password == 'admin123') ||
        (username == globals.registeredUsername &&
         password == globals.registeredPassword)) {
      
      _showSnackBar('Login successful!', Colors.green);
      setState(() {
        statusLogin = "Login Successful!";
      });

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainMenu()),
      );

    } else {
      _showSnackBar('Invalid username or password.', Colors.red);
    }
  },
  child: const Text("Login"),
),

      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RegisterPage()),
          );
        },
        child: const Text("Belum punya akun? Register"),
      ),
    ],
  ),
),

          ],
        ),
      ),
    );
  }
}