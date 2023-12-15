import 'package:flutter/material.dart';
import 'matkulform.dart';

class DataMatkul extends StatefulWidget{
  const DataMatkul({Key? key}) : super(key: key);

  @override
  _DataMatkulState createState() => _DataMatkulState();
}

class _DataMatkulState extends State<DataMatkul>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Data Mata Kuliah'),
          backgroundColor: const Color.fromARGB(255, 0, 60, 255),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () async{
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const MatkulForm()
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
                title: Text('Bahasa Inggris 4'),
                subtitle: Text('113'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Pemrograman 4'),
                subtitle: Text('316')
              ),
            ),
          ],
        ),
      );
    }
}