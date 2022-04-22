import 'package:flutter/material.dart';
import 'package:posttest4_1915026038_aldiriosetiawan/mainpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Gender { unknown, pria, wanita }
enum Jenis { unknown, kucing, anjing, kelinci }

class _MyHomePageState extends State<MyHomePage> {
  final namaCtrl = TextEditingController();
  final umurCtrl = TextEditingController();
  Gender gender = Gender.unknown;
  Jenis jenis = Jenis.unknown;

  String nama = "";
  String umur = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaCtrl.dispose();
    umurCtrl.dispose();
    super.dispose();
  }

  String getGender(Gender? value) {
    if (value == Gender.pria) {
      return "Pria";
    } else if (value == Gender.wanita) {
      return "Wanita";
    }
    return "Tidak Diketahui";
  }

  String getJenis(Jenis? value) {
    if (value == Jenis.kucing) {
      return "kucing";
    } else if (value == Jenis.anjing) {
      return "anjing";
    } else if (value == Jenis.kelinci) {
      return "kelinci";
    }
    return "Tidak Diketahui";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          "PET ADOPTER",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical:20),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  maxLines: 1,
                  controller: namaCtrl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama",
                    hintText: 'Masukkan nama anda',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  maxLines: 1,
                  controller: umurCtrl,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan usia anda',
                      labelText: "usia"),
                ),            
                const SizedBox(height: 20),
                const Text(
                  "Jenis Kelamin : ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text("Pria"),
                        leading: Radio(
                          groupValue: gender,
                          value: Gender.pria,
                          onChanged: (Gender? value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text("Wanita"),
                        leading: Radio(
                          groupValue: gender,
                          value: Gender.wanita,
                          onChanged: (Gender? value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Hewan Favorit : ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text("Kucing"),
                        leading: Radio(
                          groupValue: jenis,
                          value: Jenis.kucing,
                          onChanged: (Jenis? value) {
                            setState(() {
                              jenis = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text("Anjing"),
                        leading: Radio(
                          groupValue: jenis,
                          value: Jenis.anjing,
                          onChanged: (Jenis? value) {
                            setState(() {
                              jenis = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text("Kelinci"),
                        leading: Radio(
                          groupValue: jenis,
                          value: Jenis.kelinci,
                          onChanged: (Jenis? value) {
                            setState(() {
                              jenis = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: 220,
              height: 55,
              margin: const EdgeInsets.only(top: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: (){
                  setState(() {
                    nama = namaCtrl.text;
                    umur = umurCtrl.text;
                  });
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) =>MainPage(),
                      ),
                  );
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),          
            // const SizedBox(height: 20),
            // Text('Nama $nama'),
            // Text('Usia$umur'),
            // Text('Jenis Kelamin${getGender(gender)} '),
            // Text('Hewan Favorit${getJenis(jenis)} '),     
          ],
        ),
      ),
    );
  }
}
