import 'package:flutter/material.dart';

class Jadwal extends StatefulWidget {
  const Jadwal({super.key});

  @override
  State<Jadwal> createState() => _JadwalState();
}

class _JadwalState extends State<Jadwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jadwal'),
      ),
      body: const Center(
        child: Column(
          children: [
            Icon(
              Icons.calendar_today,
              size: 150,
              color: Colors.blue,
            ),
            Text(
              'Halaman Jadwal',
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
