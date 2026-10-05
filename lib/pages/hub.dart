import 'package:flutter/material.dart';

class Hub extends StatelessWidget {
  const new({super.key});

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
      body: ListView(
        padding: EdgeInsets.only(top: 8),
        children: [
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "Hub Saya",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.chevron_right, color: Colors.grey),
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "Slot Jam Skema Hub",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.chevron_right, color: Colors.grey),
          ),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              "Performa",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.chevron_right, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
