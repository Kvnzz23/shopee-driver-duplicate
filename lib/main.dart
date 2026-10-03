import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 70,
          leadingWidth: 80,
          titleSpacing: 0,
          leading: Builder(
            builder: (context) {
              return GestureDetector(
                onTap: () {
                  // Buka drawer saat gambar diklik
                  Scaffold.of(context).openDrawer();
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://picsum.photos/200/300",
                    ),
                  ),
                ),
              );
            },
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 160,
                child: Text(
                  "KEVIN HERLAMBANG",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Status Kerja: Aktif",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    padding: EdgeInsets.zero, // 1. Hapus padding dalam tombol
                    minimumSize:
                        Size.zero, // 2. Hapus batas ukuran minimum tombol
                    tapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // 3. Rapatkan area sentuh
                  ),
                  onPressed: () {},
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 23),
                      SizedBox(width: 6),
                      Text(
                        "4.97",
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const SizedBox(
                    width: 12,
                    child: Text("|", style: TextStyle(color: Colors.grey)),
                  ),
                ), // Atur jarak antartombol secara manual sesuai keinginan
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bar_chart, color: Colors.orange, size: 23),
                      SizedBox(width: 3),
                      Text(
                        "100.0%",
                        style: TextStyle(color: Colors.black87, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12), // Jarak dari tepi paling kanan layar
              ],
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.redAccent, // 1. Warna teks saat tab AKTIF
            unselectedLabelColor: Colors.grey, // 2. Warna teks saat TIDAK aktif
            indicatorColor: Colors.redAccent, // 3. Warna garis indikator
            indicatorSize: TabBarIndicatorSize
                .tab, // 4. Garis indikator PANJANG FULL mengikuti lebar tab
            indicatorWeight: 3,
            tabs: [
              Tab(text: "Heatmap"),
              Tab(text: "Daftar Pesanan"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("INI HEATMAP")),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdni.iconscout.com/illustration/premium/thumb/empty-state-2130362-1800926.png",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Belum Ada Pesanan",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "Pastikan selalu memakai atribut resmi dan ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
