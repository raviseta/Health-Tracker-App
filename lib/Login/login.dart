import 'package:flutter/material.dart';
import 'package:trackers/Trackers/trackerlist.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo or Image
            Image.network(
              'https://via.placeholder.com/150', // Replace with your logo
              height: 80,
            ),
            const SizedBox(height: 40),

            // Email TextField
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Password TextField
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            // Remember Me checkbox
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {
                    // Handle checkbox
                  },
                ),
                const Text('Remember me'),
              ],
            ),
            const SizedBox(height: 16),
            // Login button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize:
                    const Size(double.infinity, 50), // Full-width button
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 16),
            // Forgot password
            TextButton(
              onPressed: () {
                // Forgot password action
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
