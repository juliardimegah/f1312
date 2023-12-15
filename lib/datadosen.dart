import 'package:flutter/material.dart';
import 'dosenform.dart';

class DataDosen extends StatefulWidget{
  const DataDosen({Key? key}) : super(key: key);

  @override
  _DataDosenState createState() => _DataDosenState();
}

class _DataDosenState extends State<DataDosen>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Data Dosen'),
          backgroundColor: const Color.fromARGB(255, 0, 60, 255),
          actions: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () async{
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const DosenForm()
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
                title: Text('115.88.193'),
                subtitle: Text('Roni Andarsyah, S.T., M.Kom., SFPC'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('103.78.069'),
                subtitle: Text('Roni Habibi, S.Kom.,M.T., SFPC')
              ),
            ),
          ],
        ),
      );
    }
}