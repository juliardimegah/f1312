import 'package:flutter/material.dart';
import 'ruanganform.dart';

class DataRuangan extends StatefulWidget{
  const DataRuangan({Key? key}) : super(key: key);

  @override
  _DataRuanganState createState() => _DataRuanganState();
}

class _DataRuanganState extends State<DataRuangan>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Data Ruangan'),
          backgroundColor: const Color.fromARGB(255, 0, 60, 255),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () async{
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const RuanganForm()
                  )
                  );
              }
            )
          ],
        ),
        body: ListView(
          children: const[
            Card(
              child: ListTile(
                title: Text('161'),
                subtitle: Text('Gedung Pendidikan'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('102'),
                subtitle: Text('Gedung FLTB')
              ),
            ),
          ],
        ),
      );
    }
}