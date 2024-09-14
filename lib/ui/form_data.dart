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
        backgroundColor: Colors.deepPurpleAccent, // Warna AppBar
      ),
      body: SingleChildScrollView( // Untuk layar kecil agar form bisa discroll
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _titleSection(),
                const SizedBox(height: 20),
                _inputCard(),
                const SizedBox(height: 30),
                _tombolSimpan()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleSection() {
    return const Text(
      "Form Input Data Mahasiswa",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurpleAccent,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _inputCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _textboxNama(),
            const SizedBox(height: 10),
            _textboxNIM(),
            const SizedBox(height: 10),
            _textboxTahun(),
          ],
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        labelStyle: TextStyle(color: Colors.deepPurpleAccent),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        filled: true,
        fillColor: Colors.deepPurple[50],
      ),
      controller: _namaController,
    );
  }

  Widget _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        labelStyle: TextStyle(color: Colors.deepPurpleAccent),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        filled: true,
        fillColor: Colors.deepPurple[50],
      ),
      controller: _nimController,
    );
  }

  Widget _textboxTahun() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: TextStyle(color: Colors.deepPurpleAccent),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        filled: true,
        fillColor: Colors.deepPurple[50],
      ),
      controller: _tahunController,
    );
  }

  Widget _tombolSimpan() {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          backgroundColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun)));
        },
        child: const Text(
          'Simpan',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
