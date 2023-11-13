import 'package:flutter/material.dart';

class Dosen extends StatefulWidget {
  const Dosen({super.key});

  @override
  State<Dosen> createState() => _DosenState();
}

class _DosenState extends State<Dosen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dosen'),
      ),
      body: const Center(
        child: Column(
          children: [
            Icon(
              Icons.person,
              size: 150,
              color: Colors.green,
            ),
            Text(
              'Halaman Dosen',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
