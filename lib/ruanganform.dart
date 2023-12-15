import 'ruangandetil.dart';
import 'package:flutter/material.dart';

class RuanganForm extends StatefulWidget {
  const RuanganForm({Key? key}) : super(key: key);

  @override
  _RuanganFormState createState() => _RuanganFormState();
}


class _RuanganFormState extends State<RuanganForm>{
  
  @override
  // ignore: override_on_non_overriding_member
  final _koderuanganTexBoxController = TextEditingController();
  final _gedungTextBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Data Ruangan"),
        backgroundColor: Color.fromARGB(255, 0, 60, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxkoderuangan(),
            _textboxgedung(),
            _tombolsimpan()
          ],
        ),
      ),
    );
  }


  _textboxkoderuangan() {
    return TextField(
      decoration:  const InputDecoration(labelText: "Kode Ruangan"),
      controller: _koderuanganTexBoxController,
    );
  }


  _textboxgedung(){
    return TextField(
      decoration:  const InputDecoration(labelText: "Nama Gedung"),
      controller: _gedungTextBoxController,
    );
  }


  _tombolsimpan() {
    return ElevatedButton(
      onPressed: () {
        String koderuangan = _koderuanganTexBoxController.text;
        String gedung = _gedungTextBoxController.text;

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RuanganDetil(
            koderuangan: koderuangan,
            gedung: gedung
          )
        )
      );
    },
    child: const Text('Simpan'));
  }

}