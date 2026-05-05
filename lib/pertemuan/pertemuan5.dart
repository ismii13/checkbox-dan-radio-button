import 'package:flutter/material.dart';

class Pertemuan5Page extends StatelessWidget {
  // Contoh data berbentuk List of Maps untuk ditampilkan di ListView
  final List<Map<String, dynamic>> productList = [
    {
      "title": "Mobile Legends",
      "subtitle": "Top Up Diamonds",
      "icon": Icons.gamepad,
    },
    {
      "title": "Free Fire",
      "subtitle": "Top Up Diamonds",
      "icon": Icons.sports_esports,
    },
    {
      "title": "PUBG Mobile",
      "subtitle": "Top Up UC",
      "icon": Icons.military_tech,
    },
    {"title": "Valorant", "subtitle": "Top Up Points", "icon": Icons.computer},
    {
      "title": "Genshin Impact",
      "subtitle": "Top Up Genesis Crystals",
      "icon": Icons.explore,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Materi ListView"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[100],
      // Menggunakan ListView.builder untuk efisiensi render item
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  productList[index]["icon"],
                  color: Colors.blueAccent,
                ),
              ),
              title: Text(
                productList[index]["title"],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                productList[index]["subtitle"],
                style: TextStyle(color: Colors.grey.shade600),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
              onTap: () {
                // Aksi ketika item di-klik bisa ditambahkan di sini nanti
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Anda memilih ${productList[index]["title"]}',
                    ),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
