import 'dosendetil.dart';
import 'package:flutter/material.dart';

class DosenForm extends StatefulWidget {
  const DosenForm({Key? key}) : super(key: key);

  @override
  _DosenFormState createState() => _DosenFormState();
}


class _DosenFormState extends State<DosenForm>{
  
  @override
  // ignore: override_on_non_overriding_member
  final _namalengkapTextBoxController = TextEditingController();
  final _nikTexBoxController = TextEditingController();
  final _alamatTextBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Data Dosen"),
        backgroundColor: const Color.fromARGB(255, 0, 60, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxnik(),
            _textboxnamalengkap(),
            _textboxalamat(),
            _tombolsimpan()
          ],
        ),
      ),
    );
  }


  _textboxnik() {
    return TextField(
      decoration:  const InputDecoration(labelText: "NIK"),
      controller: _nikTexBoxController,
    );
  }

  _textboxnamalengkap() {
    return TextField(
      decoration:  const InputDecoration(labelText: "Nama Lengkap"),
      controller: _namalengkapTextBoxController,
    );
  }

  _textboxalamat(){
    return TextField(
      decoration:  const InputDecoration(labelText: "Alamat"),
      controller: _alamatTextBoxController,
    );
  }


  _tombolsimpan() {
    return ElevatedButton(
      onPressed: () {
        String nik = _nikTexBoxController.text;
        String namalengkap = _namalengkapTextBoxController.text;
        String alamat = _alamatTextBoxController.text;

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DosenDetil(
            nik: nik,
            namalengkap: namalengkap,
            alamat: alamat
          )
        )
      );
    },
    child: const Text('Simpan'));
  }

}