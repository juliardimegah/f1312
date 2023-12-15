import 'matkuldetil.dart';
import 'package:flutter/material.dart';

class MatkulForm extends StatefulWidget {
  const MatkulForm({Key? key}) : super(key: key);

  @override
  _MatkulFormState createState() => _MatkulFormState();
}


class _MatkulFormState extends State<MatkulForm>{
  
  @override
  // ignore: override_on_non_overriding_member
  final _kodematkulTexBoxController = TextEditingController();
  final _ruanganTextBoxController = TextEditingController();
  final _namadosenTextBoxController = TextEditingController();
  final _namamatkulTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Data Mata Kuliah"),
        backgroundColor: Color.fromARGB(255, 0, 60, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxkodematkul(),
            _textboxnamamatkul(),
            _textboxruangan(),
            _textboxnamadosen(),
            _tombolsimpan()
          ],
        ),
      ),
    );
  }


  _textboxkodematkul() {
    return TextField(
      decoration:  const InputDecoration(labelText: "Kode Mata Kuliah"),
      controller: _kodematkulTexBoxController,
    );
  }


  _textboxnamamatkul() {
    return TextField(
      decoration:  const InputDecoration(labelText: "Nama Mata Kuliah"),
      controller: _namamatkulTextboxController,
    );
  }


  _textboxruangan() {
    return TextField(
      decoration:  const InputDecoration(labelText: "Ruangan"),
      controller: _ruanganTextBoxController,
    );
  }


    _textboxnamadosen() {
    return TextField(
      decoration:  const InputDecoration(labelText: "Dosen Pengajar"),
      controller: _namadosenTextBoxController,
    );
  }


  _tombolsimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodematkul = _kodematkulTexBoxController.text;
        String namamatkul = _namamatkulTextboxController.text;
        String ruangan = _ruanganTextBoxController.text;
        String namadosen = _namadosenTextBoxController.text;

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MatkulDetil(
            kodematkul: kodematkul,
            namamatkul: namamatkul,
            ruangan: ruangan,
            namadosen: namadosen
          )
        )
      );
    },
    child: const Text('Simpan'));
  }

}