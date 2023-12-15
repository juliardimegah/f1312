import 'mahasiswadetil.dart';
import 'package:flutter/material.dart';

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({Key? key}) : super(key: key);

  @override
  _MahasiswaFormState createState() => _MahasiswaFormState();
}


class _MahasiswaFormState extends State<MahasiswaForm>{
  
  @override
  // ignore: override_on_non_overriding_member
  final _namalengkapTextBoxController = TextEditingController();
  final _npmTexBoxController = TextEditingController();
  final _alamatTextBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Data Siswa"),
        backgroundColor: const Color.fromARGB(255, 0, 60, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxnpm(),
            _textboxnamalengkap(),
            _textboxalamat(),
            _tombolsimpan()
          ],
        ),
      ),
    );
  }


  _textboxnpm() {
    return TextField(
      decoration:  const InputDecoration(labelText: "NPM"),
      controller: _npmTexBoxController,
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
        String npm = _npmTexBoxController.text;
        String namalengkap = _namalengkapTextBoxController.text;
        String alamat = _alamatTextBoxController.text;

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MahasiswaDetil(
            npm: npm,
            namalengkap: namalengkap,
            alamat: alamat
          )
        )
      );
    },
    child: const Text('Simpan'));
  }

}