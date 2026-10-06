import 'package:flutter/material.dart';

class PesananSearah extends StatelessWidget {
  const PesananSearah({super.key});

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
              padding: EdgeInsets.only(top: 20),
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
          ],
        ),
      ),
    );
  }
}
