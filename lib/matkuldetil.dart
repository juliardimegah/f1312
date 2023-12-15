import 'package:flutter/material.dart';

class MatkulDetil extends StatefulWidget {
  final String? kodematkul;
  final String? namamatkul;
  final String? namadosen;
  final String? ruangan;

  const MatkulDetil({Key? key, this.kodematkul, this.namamatkul, this.namadosen, this.ruangan})
      : super(key: key);

  @override
  _MatkulDetilState createState() => _MatkulDetilState();
}

class _MatkulDetilState extends State<MatkulDetil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Mata Kuliah"),
        backgroundColor: const Color.fromARGB(255, 0, 60, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Kode Mata Kuliah: ${widget.kodematkul}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Nama Mata Kuliah: ${widget.namamatkul}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Ruangan: ${widget.ruangan}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Nama Dosen: ${widget.namadosen}",
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
