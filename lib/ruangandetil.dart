import 'package:flutter/material.dart';

class RuanganDetil extends StatefulWidget {
  final String? koderuangan;
  final String? gedung;

  const RuanganDetil({Key? key, this.koderuangan, this.gedung})
      : super(key: key);

  @override
  _RuanganDetilState createState() => _RuanganDetilState();
}

class _RuanganDetilState extends State<RuanganDetil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Ruangan"),
        backgroundColor: const Color.fromARGB(255, 0, 60, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Kode Ruangan: ${widget.koderuangan}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Alamat: ${widget.gedung}",
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
