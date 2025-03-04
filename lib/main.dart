import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IAmStudentPage(),
    );
  }
}

class IAmStudentPage extends StatelessWidget {
  const IAmStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I Am Student'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar dengan Error Handling
              Image.asset(
                'assets/images/student.png',
                height: 200,
                errorBuilder: (context, error, stackTrace) {
                  return const Text(
                    '❌ Gambar tidak ditemukan!',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  );
                },
              ),

              const SizedBox(height: 20),

              // Teks Deskriptif dalam Container
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(128, 128, 128, 0.5), // ✅ Perbaikan
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
                child: const Text(
                  '📚 Hidup seorang mahasiswa:\n'
                  '- Mie instan = makanan pokok\n'
                  '- Laptop = sahabat setia\n'
                  '- Deadline = musuh utama\n'
                  '- Tidur = fitur premium',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
