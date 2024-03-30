import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  final BuildContext context;
  Profile({super.key, required this.context});

  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  TextEditingController dateController = TextEditingController();
  String selectedGender =
      'Perempuan'; // Variabel untuk menyimpan pilihan gender

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover, // Sesuaikan dengan kebutuhan Anda
          ),
        ),
        child: Column(
          children: [
            //NAMA BUDI - GAMBAR BUDI
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 50.0, top: 40.0, bottom: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Budi Martami',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/ppBudi.png',
                      fit: BoxFit
                          .cover, // Memastikan gambar terisi sepenuhnya di dalam lingkaran
                      width: 70, // Sesuaikan dengan ukuran yang Anda inginkan
                      height: 70, // Sesuaikan dengan ukuran yang Anda inginkan
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 40.0),
              child: Container(
                child: Column(
                  children: [
                    //CONTAINER GEDE
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ), // Warna garis tepi dapat disesuaikan
                        color: Colors.white, // Warna latar belakang abu-abu
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          //UBAH PROFILE
                          Row(
                            children: [
                              Text(
                                'Ubah Profile',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //NAMA DEPAN
                          Container(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama Depan',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          //NAMA BELAKANG
                          Container(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nama Belakang',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          //GENDER AND DATE
                          Row(
                            children: [
                              //GENDER
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Gender',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    DropdownButtonFormField<String>(
                                      value:
                                          selectedGender, // Set the initial value
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedGender = value!;
                                        });
                                      },
                                      items: [
                                        DropdownMenuItem(
                                          child: Text('Laki-laki'),
                                          value: 'Laki-laki',
                                        ),
                                        DropdownMenuItem(
                                          child: Text('Perempuan'),
                                          value: 'Perempuan',
                                        ),
                                        // Add more items as needed
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //DATE
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Tanggal Lahir',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      child: Center(
                                        child: TextField(
                                          controller: dateController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "DD/MM/YYYY",
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.calendar_today),
                                              onPressed: () async {
                                                DateTime? pickedDate =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(2000),
                                                  lastDate: DateTime(2101),
                                                );
                                                if (pickedDate != null) {
                                                  String formattedDate =
                                                      DateFormat("yyyy-MM-dd")
                                                          .format(pickedDate);
                                                  setState(() {
                                                    dateController.text =
                                                        formattedDate
                                                            .toString();
                                                  });
                                                } else {
                                                  print("Not selected");
                                                }
                                              },
                                            ),
                                          ),
                                          readOnly: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ALAMAT
                          Container(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alamat',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 40,
                          ),
                          //SIMPAN
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF5CD46),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 16),
                                child: Text(
                                  'Simpan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}