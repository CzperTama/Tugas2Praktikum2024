import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _textboxNama(),
                const SizedBox(height: 20),
                _textboxNIM(),
                const SizedBox(height: 20),
                _textboxTahun(),
                const SizedBox(height: 30),
                _tombolSimpan()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Nama",
        border: OutlineInputBorder(),
      ),
      controller: _namaController,
    );
  }

  Widget _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "NIM",
        border: OutlineInputBorder(),
      ),
      controller: _nimController,
    );
  }

  Widget _textboxTahun() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Tahun Lahir",
        border: OutlineInputBorder(),
      ),
      controller: _tahunController,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TampilData(nama: nama, nim: nim, tahun: tahun),
        ));
      },
      child: const Text('Simpan'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
    );
  }
}