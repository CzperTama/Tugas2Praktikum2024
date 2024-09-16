import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        color: Colors.lightBlue[50],
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildInfoCard("Nama", nama),
                  const SizedBox(height: 20),
                  _buildInfoCard("NIM", nim),
                  const SizedBox(height: 20),
                  _buildInfoCard("Umur", "$umur tahun"),
                  const SizedBox(height: 30),
                  _tombolKembali(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(String label, String value) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tombolKembali(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Kembali'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        backgroundColor: Colors.blue,
      ),
    );
  }
}