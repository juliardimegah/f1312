import 'package:flutter/material.dart';
import 'mahasiswaform.dart';

class DataMahasiswa extends StatefulWidget{
  const DataMahasiswa({Key? key}) : super(key: key);

  @override
  _DataMahasiswaState createState() => _DataMahasiswaState();
}

class _DataMahasiswaState extends State<DataMahasiswa>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Data Mahasiswa'),
          backgroundColor: const Color.fromARGB(255, 0, 60, 255),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () async{
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const MahasiswaForm()
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
                title: Text('1214066'),
                subtitle: Text('Megah Juliardi'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('1214060'),
                subtitle: Text('Prisya Haura')
              ),
            ),
          ],
        ),
      );
    }
}