import 'package:flutter/material.dart';

class DosenDetil extends StatefulWidget {
  final String? nik;
  final String? namalengkap;
  final String? alamat;

  const DosenDetil({Key? key, this.nik, this.namalengkap, this.alamat})
      : super(key: key);

  @override
  _DosenDetilState createState() => _DosenDetilState();
}

class _DosenDetilState extends State<DosenDetil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Dosen"),
        backgroundColor: const Color.fromARGB(255, 0, 60, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "NIK: ${widget.nik}",
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
