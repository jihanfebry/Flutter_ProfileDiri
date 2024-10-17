import 'package:flutter/material.dart';
import 'dashboard.dart'; // Mengimpor halaman dashboard

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(), // Halaman awal adalah LoginPage
    ));

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controller untuk mengelola data TextField
    final TextEditingController nameController = TextEditingController();
    final TextEditingController roleController = TextEditingController();
    final TextEditingController schoolController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      body: Container(
        color: Colors.pink[100], // Warna latar belakang layar penuh
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Center(
          child: SingleChildScrollView( // Menambahkan ScrollView agar bisa menggulung saat keyboard muncul
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name', // Mengubah label menjadi Name
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: roleController,
                  decoration: InputDecoration(
                    labelText: 'Role', // Label tetap Role
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: schoolController,
                  decoration: InputDecoration(
                    labelText: 'School', // Mengubah label menjadi School
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: descriptionController,
                  maxLines: 4, // Menambah tinggi kolom deskripsi
                  decoration: InputDecoration(
                    labelText: 'Description', // Mengubah label menjadi Description
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Mengambil data dari TextField
                    final String name = nameController.text;
                    final String role = roleController.text;
                    final String school = schoolController.text;
                    final String description = descriptionController.text;

                    // Navigasi ke halaman Home dengan mengirimkan data
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(
                          name: name,
                          role: role,
                          school: school,
                          description: description,
                        ),
                      ),
                    );
                  },
                  child: const Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50), // Tombol lebar penuh
                    backgroundColor: Colors.pink, // Warna tombol
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
