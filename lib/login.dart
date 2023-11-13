import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Aplikasi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              'gambar/stmik.png',
              width: 150,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(
                horizontal: 150,
                vertical: 20,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
