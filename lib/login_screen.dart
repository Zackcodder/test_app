import 'package:flutter/material.dart';
import 'package:test_app/houses_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            /// icon to show person icon
            const Icon(
              Icons.person_2,
              size: 150,
              color: Colors.black,
            ),

            /// user name
            const Text(
              'user name: Udah Paul',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),

            /// this row contains my phone number and email address
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.phone_android,
                      color: Colors.blue,
                      size: 25,
                    ),
                    Text('Phone Num: 90923447869'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.blue,
                      size: 25,
                    ),
                    Text('email: paul@gmail.com'),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HousesScreen()));
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
