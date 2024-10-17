import 'package:flutter/material.dart';
import 'page2.dart';
import 'main.dart';

class Home extends StatelessWidget {
  final String name;
  final String role;
  final String school;
  final String description;

  const Home({
    Key? key,
    required this.name,
    required this.role,
    required this.school,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold), // Set the title to bold
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Icon panah kembali
          onPressed: () {
            // Mengarahkan kembali ke halaman login
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const LoginPage()), // Halaman login
              (Route<dynamic> route) => false, // Menghapus semua rute sebelumnya
            );
          },
        ),
        backgroundColor: const Color.fromARGB(255, 223, 109, 151), // Warna background Navbar
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                color: Colors.white.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage('assets/images/zilly.jpg'),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        name, // Tampilkan nama yang diterima
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        role, // Tampilkan role langsung
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.pink,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        school, // Tampilkan asal sekolah langsung
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.pink,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        description, // Tampilkan deskripsi langsung
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.pink,
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Page2()),
                          );
                        },
                        child: const Text(
                          'See more',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
