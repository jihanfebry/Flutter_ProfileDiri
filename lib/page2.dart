import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Page",
          style: TextStyle(fontWeight: FontWeight.bold), // Set the title to bold
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Icon panah kembali
          onPressed: () {
            Navigator.pop(context); // Aksi kembali ke halaman sebelumnya
          },
        ),
        backgroundColor: const Color.fromARGB(255, 223, 109, 151), // Warna background Navbar
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpeg'),
              fit: BoxFit.cover, // Menjadikan gambar sebagai background cover
            ),
          ),
          child: Center( // Center all cards horizontally
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center, // Menjajarkan ke tengah
              children: <Widget>[
                const SizedBox(height: 20),
                const CircleAvatar(
                  radius: 80.0, // Ukuran avatar
                  backgroundImage: AssetImage('assets/images/zilly.jpg'),
                ),
                const SizedBox(height: 10), // Jarak antara avatar dan text
                const Text(
                  "Jihan Febriyanti Hendrawan", // Nama di bawah foto
                  style: TextStyle(
                    fontSize: 18.0, // Ukuran font
                    fontWeight: FontWeight.bold, // Menebalkan font
                  ),
                ),
                const SizedBox(height: 20),
                // Ensure all cards have the same width
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9, // Width of 90% of the screen
                  child: buildCard(
                    "About Me",
                    "I am Jihan Febrianti Hendrawan, a student from SMK Wikrama. I am 17 years old. I chose software and game development, my hobby is trying new things, that's why I chose my current major. Besides that, I also like swimming, traveling to far away places. Going to school at Wikrama makes me get new things and lots of interesting experiences",
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9, // Width of 90% of the screen
                  child: buildSoftSkillCard("Soft-Skill", [
                    "Problem-solving",
                    "Communication",
                    "Teamwork",
                    "Creative thinking"
                  ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9, // Width of 90% of the screen
                  child: buildContactCard("Contact Me", [
                    "Instagram: @example",
                    "Linked In: example",
                    "Email: example@gmail.com"
                  ]),
                ),
                const SizedBox(height: 20), // Jarak tambahan di bagian bawah
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title, String content) {
    return _buildGenericCard(
      title,
      Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            content,
            style: const TextStyle(fontSize: 16.0),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget buildSoftSkillCard(String title, List<String> skills) {
    return _buildGenericCard(
      title,
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start, // Menjajarkan ke kiri
        children: skills
            .map((skill) => Text(skill, style: const TextStyle(fontSize: 16.0)))
            .toList(),
      ),
    );
  }

  Widget buildContactCard(String title, List<String> contacts) {
    return _buildGenericCard(
      title,
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start, // Menjajarkan ke kiri
        children: contacts
            .map((contact) => Text(contact, style: const TextStyle(fontSize: 16.0)))
            .toList(),
      ),
    );
  }

  Widget _buildGenericCard(String title, Widget content) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Membuat sudut membulat
      ),
      elevation: 10, // Menambahkan bayangan pada kartu
      color: Colors.white.withOpacity(0.8), // Warna kartu semi-transparan
      margin: const EdgeInsets.symmetric(vertical: 10.0), // Menambah margin antar card
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Padding di dalam kartu
        child: Column(
          mainAxisSize: MainAxisSize.min, // Height sesuai konten
          crossAxisAlignment: CrossAxisAlignment.start, // Menjajarkan ke kiri
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            content,
          ],
        ),
      ),
    );
  }
}
