import 'package:flutter/material.dart';

class Latihan extends StatefulWidget {
  const Latihan({super.key});

  @override
  State<Latihan> createState() => _LatihanState();
}

// final now = new DateTime.now();
// String formatter = DateFormat('yMd').format(now);

// // ignore: non_constant_identifier_names
// DateFormat(String s) {
//   DateFormat('yMd');
// }

class _LatihanState extends State<Latihan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Icon(Icons.list_alt_rounded),
                  Text('Kegiatan'),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Judul Kegiatan'),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.sort),
                  Text('Kegiatan'),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 40, 15, 40),
                      border: OutlineInputBorder(),
                      hintText: 'Tambah Keterangan'),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(children: const [
                      Icon(Icons.date_range),
                      Text('Tanggal Mulai'),
                    ]),
                  ),
                  Expanded(
                    child: Row(children: const [
                      Icon(Icons.date_range_outlined),
                      Text('Tanggal Selesai')
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: '20-03-2022',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          hintText: '20-03-2022'),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 100)),
                    const Icon(Icons.category),
                    const Text('Kategori'),
                  ],
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                        border: OutlineInputBorder(),
                        hintText: 'Routine'),
                  ),
                )
              ]),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      // ignore: prefer_const_constructors
                      child: Text(
                        'Batal',
                        style: const TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      // ignore: prefer_const_constructors
                      child: Text(
                        'Simpan',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
