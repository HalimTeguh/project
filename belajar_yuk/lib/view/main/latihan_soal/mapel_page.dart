import 'package:belajar_yuk/view/main/latihan_soal/home_page.dart';
import 'package:belajar_yuk/view/main/latihan_soal/paket_soal_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MapelPage extends StatelessWidget {
  const MapelPage({super.key});
  static String route = "mapel_page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilih Mata Pelajaran"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
        child: ListView.builder(itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (() {
              Navigator.of(context).pushNamed(PaketSoal.route);
            }),
            child: MapelWidget());
        }),
      ),
    );
  }
}