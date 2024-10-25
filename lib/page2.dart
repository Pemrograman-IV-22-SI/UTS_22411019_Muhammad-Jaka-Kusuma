import 'package:flutter/material.dart';
import 'package:uts_pemrograman_4_22411019_muhammad_jaka_kusuma/home.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
  static const String routeName = '/Struk';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    String namaPelanggan = args['namaPelanggan'];
    String kodeBarang = args['kodeBarang'];
    String namaBarang = args['namaBarang'];
    String harga = args['harga'];
    String stok = args['stok'];
    String jumlahBeli = args['jumlahBeli'];
    double total = args['total'];
    double diskon = args['diskon'];
    double grandTotal = args['grandTotal'];

    String discountPercentage = (diskon > 0) ? '10%' : 'Tidak Ada Diskon';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Detail Pembelian',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Pelanggan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(
              '$namaPelanggan',
            ),
            const Text("Kode Barang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$kodeBarang'),
            const Text("Nama Barang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$namaBarang'),
            const Text("Harga",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$harga'),
            const Text("Stok",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$stok'),
            const Text("Jumlah Beli",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$jumlahBeli'),
            const Text("Diskon",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text('$discountPercentage'),
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Total",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('$total'),
                  const Text("Total Potongan Diskon",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('$diskon'),
                  const Text("Grand Total",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('$grandTotal'),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                      child: const Text('Kembali'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))))
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
