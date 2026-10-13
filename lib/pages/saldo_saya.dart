import 'package:flutter/material.dart';

class SaldoSaya extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Saldo Saya",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.orange),
            onPressed: () {
              // Logika untuk tombol info
            },
          ),
        ],
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Column(
        children: [
          // ==================== KARTU UTAMA ====================
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // 1. Kartu Saldo Oranye
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEE4D2D), // Warna Oranye Shopee
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'ShopeePay',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Icon(Icons.chevron_right, color: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Rp ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: '5.057',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // 2. Tombol "Isi Saldo" & "Tarik Saldo"
                Row(
                  children: [
                    // Tombol Isi Saldo
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add_box_outlined,
                            color: Color(0xFFEE4D2D),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Isi Saldo',
                            style: TextStyle(
                              color: Color(0xFFEE4D2D),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Garis Pemisah Tengah
                    Container(height: 24, width: 1, color: Colors.grey[300]),

                    // Tombol Tarik Saldo
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            color: Color(0xFFEE4D2D),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Tarik Saldo',
                            style: TextStyle(
                              color: Color(0xFFEE4D2D),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // ==================== DAFTAR MENU ====================
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const ListTile(
                  title: Text('Transaksi', style: TextStyle(fontSize: 15)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
                Divider(height: 1, thickness: 0.5, color: Colors.grey[300]),
                const ListTile(
                  title: Text(
                    'Rangkuman Pendapatan',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
                Divider(height: 1, thickness: 0.5, color: Colors.grey[300]),
                const ListTile(
                  title: Text(
                    'Catatan Pembayaran',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
