import 'package:flutter/material.dart';

class Notifikasi extends StatefulWidget {
  const new({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  bool belumDibaca = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Pesanan Searah",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                side: BorderSide(color: Colors.grey, width: 2),
                value: belumDibaca,
                onChanged: (bool? value) {
                  setState(() {
                    belumDibaca = value ?? false;
                  });
                },
              ),
              Text("Belum dibaca", style: TextStyle(color: Colors.grey[500])),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Notif(
                  judul: "Slot Jam Skema Hub Anda sudah dimulai",
                  deskripsi: "Slot Jam Skema Hub Anda di ([Solo] -\nKartasura, 10:00-20.00) telah dimulai. Semangat beraktivitas!",
                  tanggal: "5 Okt 2026 10:00",
                ),
                Divider(
                  height: 0.5,
                  thickness: 1,
                  color: Color.fromARGB(255, 225, 225, 225),
                  indent: 15, // Jarak dari batas kiri
                  endIndent: 15, // Jarak dari batas kanan
                ),
                Notif(
                  judul: "Slot Jam Skema Hub Anda sudah dimulai",
                  deskripsi: "Slot Jam Skema Hub Anda di ([Solo] -\nKartasura, 10:00-20.00) telah dimulai. Semangat beraktivitas!",
                  tanggal: "5 Okt 2026 10:00",
                ),
                Divider(
                  height: 0.5,
                  thickness: 1,
                  color: Color.fromARGB(255, 225, 225, 225),
                  indent: 15, // Jarak dari batas kiri
                  endIndent: 15, // Jarak dari batas kanan
                ),
                Notif(
                  judul: "Slot Jam Skema Hub Anda sudah dimulai",
                  deskripsi: "Slot Jam Skema Hub Anda di ([Solo] -\nKartasura, 10:00-20.00) telah dimulai. Semangat beraktivitas!",
                  tanggal: "5 Okt 2026 10:00",
                ),
                Divider(
                  height: 0.5,
                  thickness: 1,
                  color: Color.fromARGB(255, 225, 225, 225),
                  indent: 15, // Jarak dari batas kiri
                  endIndent: 15, // Jarak dari batas kanan
                ),
                Notif(
                  judul: "Slot Jam Skema Hub Anda sudah dimulai",
                  deskripsi: "Slot Jam Skema Hub Anda di ([Solo] -\nKartasura, 10:00-20.00) telah dimulai. Semangat beraktivitas!",
                  tanggal: "5 Okt 2026 10:00",
                ),
                Divider(
                  height: 0.5,
                  thickness: 1,
                  color: Color.fromARGB(255, 225, 225, 225),
                  indent: 15, // Jarak dari batas kiri
                  endIndent: 15, // Jarak dari batas kanan
                ),
                Notif(
                  judul: "Slot Jam Skema Hub Anda sudah dimulai",
                  deskripsi: "Slot Jam Skema Hub Anda di ([Solo] -\nKartasura, 10:00-20.00) telah dimulai. Semangat beraktivitas!",
                  tanggal: "5 Okt 2026 10:00",
                ),
                Divider(
                  height: 0.5,
                  thickness: 1,
                  color: Color.fromARGB(255, 225, 225, 225),
                  indent: 15, // Jarak dari batas kiri
                  endIndent: 15, // Jarak dari batas kanan
                ),
                Notif(
                  judul: "Slot Jam Skema Hub Anda sudah dimulai",
                  deskripsi: "Slot Jam Skema Hub Anda di ([Solo] -\nKartasura, 10:00-20.00) telah dimulai. Semangat beraktivitas!",
                  tanggal: "5 Okt 2026 10:00",
                ),
                Divider(
                  height: 0.5,
                  thickness: 1,
                  color: Color.fromARGB(255, 225, 225, 225),
                  indent: 15, // Jarak dari batas kiri
                  endIndent: 15, // Jarak dari batas kanan
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Notif extends StatelessWidget {
  final String judul;
  final String deskripsi;
  final String tanggal;

  const Notif({
    super.key,
    required this.judul,
    required this.deskripsi,
    required this.tanggal,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 160,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              judul,
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(deskripsi, style: TextStyle(fontSize: 15)),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(tanggal, style: TextStyle(color: Colors.grey[400])),
            ),
          ],
        ),
      ),
    );
  }
}
