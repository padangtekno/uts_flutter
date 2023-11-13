import 'package:flutter/material.dart';

class Mahasiswa extends StatefulWidget {
  const Mahasiswa({super.key});

  @override
  State<Mahasiswa> createState() => _MahasiswaState();
}

class _MahasiswaState extends State<Mahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mahasiswa'),
      ),
      body: const Center(
        child: Column(
          children: [
            Icon(
              Icons.group,
              size: 150,
              color: Colors.red,
            ),
            Text(
              'Halaman Mahasiswa',
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
