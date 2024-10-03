import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ));

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width, // Sesuai dengan lebar layar
              height: MediaQuery.of(context).size.height * 0.5, // Setengah dari tinggi layar
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0), // Membuat sudut membulat
                ),
                elevation: 10, // Ketebalan bayangan
                color: Colors.white.withOpacity(0.8), // Warna semi-transparan
                margin: const EdgeInsets.symmetric(horizontal: 30.0), // Margin sama seperti di Page2
                child: Padding(
                  padding: const EdgeInsets.all(16.0), // Padding yang sama
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min, // Mengatur ukuran berdasarkan isi
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 80.0, // Ukuran avatar tetap
                        backgroundImage: AssetImage('assets/images/zilly.jpg'),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Jihan Febriyanti Hendrawan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0, // Ukuran teks sama dengan judul di Page2
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                      const SizedBox(height: 10), // Jarak yang sama
                      const Text(
                        "Student at Wikrama Vocational High School",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0, // Ukuran teks sama dengan subtitle di Page2
                          color: Colors.pink, // Warna teks sama
                        ),
                      ),
                      const SizedBox(height: 30), // Jarak yang sama
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                        child: const Text(
                          'see more',
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
          ],
        ),
      ),
    );
  }
}
