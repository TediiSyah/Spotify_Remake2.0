import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Profil Pengguna
            Container(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('Kuceng1.jpg'),
                ),
                title: const Text(
                  'Tedii Syah',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  'Premium 👑',
                  style: TextStyle(color: Color.fromARGB(255, 208, 188, 5)),
                ),
                trailing: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ),

            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 88, 88, 88),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  hintText: 'Search for music...',
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (query) {
                  // Fungsi pencarian bisa ditambahkan di sini
                  // print("Pencarian: $query");
                },
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.only(left: 28),
              child: Text(
                'Sesuaikan Selera Kamu',
                style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            // GridView atau Row untuk menampilkan pilihan genre musik
            Container(
              padding: EdgeInsets.only(left: 5),
              height: 150, // Mengatur tinggi Container untuk Row
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: ListView(
                scrollDirection: Axis.horizontal, // Scroll horizontal
                children: [
                  musicGenre('Hiphop.png', 'Hip Hop'),
                  musicGenre('Jazz.png', 'Jazz'),
                  musicGenre('Rock.png', 'Rock'),
                  musicGenre('Indie.png', 'Indie'),
                  musicGenre('Pop.png', 'Pop'),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(
              padding: EdgeInsets.only(left: 28),
              child: Text(
                'Sering Kamu Putar Baru-Baru Ini',
                style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.only(left: 20),
              height: 120, // Height of the song card list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  songCard('Serana.png', 'Serana', 'For Revenge'),
                  songCard('Gelora.png', 'Gelora', '.Feast'),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.only(left: 20),
              height: 120, // Height of the song card list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  songCard('Diego.png', 'You % I', 'Diego Gonzales'),
                  songCard('Rumahkaca.png', 'Desember', 'Efek Rumah Kaca'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // !! function Area !! //

  // Fungsi untuk image dan text
  Widget musicGenre(String imagePath, String genreName) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      width: 130,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          child: Text(
            genreName,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk image, title, dan artis/band
  Widget songCard(String imagePath, String songTitle, String artistName) {
    return Container(
      width: 220,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 40, 40, 40),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Album image
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Judul Music dan Title nama artis
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  songTitle,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'Song • $artistName',
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
