import 'package:flutter/material.dart';

class PesananSearah extends StatelessWidget {
  const PesananSearah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Pesanan Searah",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.grey[200], height: 1.0),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Atur alamat tujuan", style: TextStyle(fontSize: 19)),
            SizedBox(height: 3),
            Row(
              children: [
                Text(
                  "Kuota Harian: ",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                Text("1"),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.help_outline_rounded,
                    size: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 45),
              child: SizedBox(
                height: 45,
                child: SearchBar(
                  hintText: "Kemanakah tujuan Anda?",
                  hintStyle: WidgetStatePropertyAll(
                    TextStyle(color: Colors.grey),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  leading: const Icon(Icons.search, color: Colors.grey),
                  elevation: WidgetStateProperty.all(
                    0,
                  ), // Menghilangkan bayangan
                  backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
                  onChanged: (value) {
                    print("Teks yang diketik: $value");
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                "Riwayat Tujuan Pesanan Searah",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 5,
                    titleAlignment: ListTileTitleAlignment.top,
                    
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Soto Dan Pikul Temurun",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 3),
                        SizedBox(
                          width: 300,
                          child: Text(
                            "Jalan Rinjani Utara No.11, Mojosongo, Jebres, Kota Surakarta (Solo), Jawa Tengah 57127, Indonesia",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    trailing: Text(
                      "0.0km",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    onTap: () {},
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
