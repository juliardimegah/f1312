import 'package:flutter/material.dart';

class MahasiswaDetil extends StatefulWidget {
  final String? npm;
  final String? namalengkap;
  final String? alamat;

  const MahasiswaDetil({Key? key, this.npm, this.namalengkap, this.alamat})
      : super(key: key);

  @override
  _MahasiswaDetilState createState() => _MahasiswaDetilState();
}

class _MahasiswaDetilState extends State<MahasiswaDetil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Mahasiswa"),
        backgroundColor: const Color.fromARGB(255, 0, 60, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "NPM: ${widget.npm}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Nama Lengkap: ${widget.namalengkap}",
              style: const TextStyle(fontSize: 25.0),
            ),
            Text(
              "Alamat: ${widget.alamat}",
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
