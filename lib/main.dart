import 'package:flutter/material.dart';
import 'asset.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 1 - 123230185',
      theme: ThemeData(
        // warna tema pinkkk ehe 😊
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pinkAccent,
          primary: Colors.pink[300],
          secondary: Colors.blueGrey[400],
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // soal 2.1 (nim ganjil == false)
    Asset mainChar = Asset('Atiqa Desyta Zahrani', 'Human', 123230185);
    int resultSize = mainChar.getSize() - 11;
    String pertarungan = mainChar.handleBos(
      "Andiko Putro Suryotomo, S.Kom., M.Cs",
      false,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Character Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
        elevation: 2,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // header profil
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: const AssetImage('asset/image/anya.jpg'),
              ),
            ),
            const SizedBox(height: 25),

            // soal 2.2
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(Icons.badge, color: Colors.pinkAccent),
                title: Text(
                  mainChar.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Role: ${mainChar.type}"),
              ),
            ),
            const SizedBox(height: 12),

            // soal 2.3
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Current Size:",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "${mainChar.getSize()}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(height: 20),

                    // soal 2.4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Modified Size (-11):",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "$resultSize",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // soal 2.5
            Card(
              color: Colors.blueGrey[50],
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.history_edu, color: Colors.blueGrey),
                        SizedBox(width: 8),
                        Text(
                          "Battle Log",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      pertarungan,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            // soal 1
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.pink.shade100),
              ),
              child: Column(
                children: [
                  const Text(
                    "Project Source Code:",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "https://github.com/keirella/Tugas-1-123230185-Prak-Mobile",
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
