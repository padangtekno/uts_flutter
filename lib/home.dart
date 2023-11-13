import 'package:flutter/material.dart';

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
                child: FlutterLogo(
                  size: 50,
                ),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: const Text('Mahasiswa'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.group,
              ),
              title: const Text('Dosen'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
              ),
              title: const Text('Staf'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.calendar_today,
              ),
              title: const Text('Jadwal'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
