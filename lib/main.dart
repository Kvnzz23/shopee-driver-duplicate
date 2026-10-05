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

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool isStatusKerja = false;
  bool isTerimaOtomatis = false;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget checkStatus() {
    if (isStatusKerja == true) {
      return Text(
        "Status Kerja Aktif",
        style: TextStyle(fontSize: 10, color: Colors.grey),
      );
    } else {
      return Text(
        "Status Kerja Tidak Aktif",
        style: TextStyle(fontSize: 10, color: Colors.grey),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 70,
        leadingWidth: 70,
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
                    "https://picsum.photos/id/64/200/300",
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
              width: 130,
              child: Text(
                "KEVIN HERLAMBANG",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            checkStatus(),
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
          controller: tabController, // Pasang controller di sini
          labelColor: Colors.redAccent,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.redAccent,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(text: "Heatmap"),
            Tab(text: "Daftar Pesanan"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
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
                SizedBox(height: 8),
                Text(
                  "Pastikan selalu memakai atribut resmi dan\nlengkap saat menjalankan pesanan, ya!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    tabController.animateTo(0);
                  },
                  child: Text(
                    "Cek Heatmap",
                    style: TextStyle(color: Colors.black54),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    side: BorderSide(color: Colors.grey, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 45),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://picsum.photos/id/64/110/110",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "KEVIN HERLAMBANG",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    // Switch Status Kerja
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: const Text(
                        "Status Kerja",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Transform.scale(
                        scale: 0.85,
                        child: Switch(
                          value: isStatusKerja,
                          onChanged: (bool value) {
                            setState(() {
                              isStatusKerja = value;
                              // Jika status kerja OFF, otomatis matikan terima otomatis
                              if (isStatusKerja) {
                                isTerimaOtomatis = true;
                              }
                            });
                          },
                          activeColor: const Color(0xFF00B092),
                          activeTrackColor: const Color(0xFF00B092)
                              .withOpacity(0.4),
                          inactiveThumbColor: Colors.grey[400],
                          inactiveTrackColor: Colors.grey[200],
                        ),
                      ),
                    ),
                    if (isStatusKerja)
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        title: const Text(
                          "Terima Otomatis",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Transform.scale(
                          scale: 0.85,
                          child: Switch(
                            value: isTerimaOtomatis,
                            onChanged: (bool value) {
                              setState(() {
                                isTerimaOtomatis = value;
                              });
                            },
                            activeColor: const Color(0xFF00B092),
                            activeTrackColor: const Color(0xFF00B092)
                                .withOpacity(0.4),
                            inactiveThumbColor: Colors.grey[400],
                            inactiveTrackColor: Colors.grey[200],
                          ),
                        ),
                      ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Pesanan Searah",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Hub",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Notifikasi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Saldo Saya",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Insentif",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Poin Penalti",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Riwayat Pesanan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "PuJOSera",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Ajak Teman Baru",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Akademi Mitra Pengemudi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Bantuan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      title: Text(
                        "Pengaturan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.chevron_right, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
