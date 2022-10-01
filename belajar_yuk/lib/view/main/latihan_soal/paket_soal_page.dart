import 'package:belajar_yuk/constants/r.dart';
import 'package:flutter/material.dart';

class PaketSoal extends StatefulWidget {
  const PaketSoal({super.key});
  static String route = "paket_soal";

  @override
  State<PaketSoal> createState() => _PaketSoalState();
}

class _PaketSoalState extends State<PaketSoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paket Soal"),
      ),
      backgroundColor: Color(0xfff3f7f8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pilih Paket Soal", style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 3/2,
                children: [
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                ],),
            ),
          ],
        ),
      ),
    );
  }
}

class PaketSoalWidget extends StatelessWidget {
  const PaketSoalWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Image.asset(R.assets.icNote, width: 14,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: R.colors.primary.withOpacity(0.2)
            ),
          ),
          Spacer(),
          Text("Aljabar", style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
          Text("0/0 Paket Soal", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 9,
            color: R.colors.greyHintText
          ),),
        ],
      ),
    );
  }
}