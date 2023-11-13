import 'package:flutter/material.dart';
import 'package:uts_flutter/dosen.dart';
import 'package:uts_flutter/jadwal.dart';
import 'package:uts_flutter/login.dart';
import 'package:uts_flutter/mahasisw.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi STMIK Royal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Selamat Datang',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'gambar/stmik.png',
              width: 250,
            ),
            const SizedBox(height: 10),
            const Text(
              'Nama Mahasiswa',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              '(NIM Mahasiswa)',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Kelas : ......',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sistem Informasi',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(
                "Nama Mahasiswa",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "email@mahasiswa.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: FlutterLogo(
                  size: 50,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: const Text('Mahasiswa'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Mahasiswa())));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.group,
              ),
              title: const Text('Dosen'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Dosen())));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.calendar_today,
              ),
              title: const Text('Jadwal'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Jadwal())));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.login,
              ),
              title: const Text('Login'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Login())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
