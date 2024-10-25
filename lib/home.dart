import 'package:flutter/material.dart';
import 'package:uts_pemrograman_4_22411019_muhammad_jaka_kusuma/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = '/home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController txtNamaPelanggan = TextEditingController();
  TextEditingController txtKodeBarang = TextEditingController();
  TextEditingController txtNamaBarang = TextEditingController();
  TextEditingController txtHarga = TextEditingController();
  TextEditingController txtStok = TextEditingController();
  TextEditingController txtJumlahBeli = TextEditingController();

  double total = 0;
  double diskon = 0;
  double grandTotal = 0;

  void hitungTotal() {
    double harga = double.tryParse(txtHarga.text) ?? 0;
    int jumlahBeli = int.tryParse(txtJumlahBeli.text) ?? 0;

    setState(() {
      total = harga * jumlahBeli;

      if (total > 10000000) {
        diskon = total * 10 / 100;
      } else {
        diskon = 0;
      }

      grandTotal = total - diskon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Beli Barang',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Pelanggan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            const Text("Nama"),
            TextField(
              controller: txtNamaPelanggan,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            const Text("Produk",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            const Text("Kode Barang"),
            TextField(
              controller: txtKodeBarang,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const Text("Nama Barang"),
            TextField(
              controller: txtNamaBarang,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const Text("Harga"),
            TextField(
              controller: txtHarga,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            const Text("Stok"),
            TextField(
              controller: txtStok,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            const Text("Jumlah Beli"),
            TextField(
              controller: txtJumlahBeli,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    hitungTotal();
                    Navigator.pushNamed(context, Page2.routeName, arguments: {
                      'namaPelanggan': txtNamaPelanggan.text,
                      'kodeBarang': txtKodeBarang.text,
                      'namaBarang': txtNamaBarang.text,
                      'harga': txtHarga.text,
                      'stok': txtStok.text,
                      'jumlahBeli': txtJumlahBeli.text,
                      'total': total,
                      'diskon': diskon,
                      'grandTotal': grandTotal,
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text('Hitung'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
