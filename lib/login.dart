import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/swapu.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 32),

                // Judul
                const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 8),

                // Input Email
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Email'),
                ),
                const SizedBox(height: 4),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 2.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),

                // Input Password
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Password'),
                ),
                const SizedBox(height: 4),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Masukkan password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 2.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),

                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Lupa password',
                    style: TextStyle(
                      color: Colors.amber,
                    ),  
                  )
                ),
                SizedBox(height: 16),

                // Tombol Login
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Home())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Belum punya akun? daftar disini',
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
                SizedBox(height: 16),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
