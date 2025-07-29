import 'package:flutter/material.dart';
import 'register.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF87CEFA), // Light blue background
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle,
                size: 200,
                color: Colors.white70,
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    // Email/Phone field
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Email or Phone',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Password field
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Login Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo, // Dark background for visibility
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white), // White text
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Register Button
                    ElevatedButton(
                      onPressed: () {   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo, // Dark background for visibility
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white), // White text
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
