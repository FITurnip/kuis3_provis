import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok:  [28]',
            ),
            const Text(
              'Mhs 1:  [2203142, Roshan Syalwan Nurilham]',
            ),
            const Text(
              'Mhs 2:  [2203211, Franklin Impianro Turnip]',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //jaawaban no 1
  Widget soalNo1() {
    TextEditingController dateController = TextEditingController();
    String selectedGender =
        'Perempuan'; // Variabel untuk menyimpan pilihan gender

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
            child:
            //NAMA BUDI - GAMBAR BUDI
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 50.0, top: 40.0, bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Budi Martami',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  ClipOval(
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      fit: BoxFit
                          .cover, // Memastikan gambar terisi sepenuhnya di dalam lingkaran
                      width: 70, // Sesuaikan dengan ukuran yang Anda inginkan
                      height: 70, // Sesuaikan dengan ukuran yang Anda inginkan
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 130.0,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
              Column(
                children: [
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
              )
            ]
          )
        ]
      ),
    );
  }

  //jaawaban no 2
  Widget soalNo2() {
    List<Image> carouselItems = [
      Image.network('https://picsum.photos/id/10/500/200'),
      Image.network('https://picsum.photos/id/11/500/200'),
      Image.network('https://picsum.photos/id/22/500/200'),
    ];

    const List<Center> halaman = [
      Center(child: Text("satu")),
      Center(child: Text("dua")),
      Center(child: Text("tiga")),
      Center(child: Text("empat")),
      Center(child: Text("lima")),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/id/490/300/200'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          title: Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                      )
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari barang di Tokoo',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20.0,),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart, color: Colors.white,),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications, color: Colors.white,),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.message, color: Colors.white,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Tooltip(
                message: 'Home',
                child: Container(
                  padding: const EdgeInsets.only(top: 2, bottom: 2, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Icon(Icons.home),
                )
              )
            ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Tooltip(
                message: 'Kategori',
                child: Container(
                  padding: const EdgeInsets.only(top: 2, bottom: 2, left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  child: const Icon(Icons.category),
                ),
              ),
            ),
            label: "Kategori"
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: const Tooltip(
                message: 'Scan',
                child: Icon(Icons.qr_code),
              ),
            ),
            label: "Scan"
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: const Tooltip(
                message: 'List Belanja',
                child: Icon(Icons.shopping_basket),
              ),
            ),
            label: "List Belanja"
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: const Tooltip(
                message: 'Akun',
                child: Icon(Icons.account_circle_rounded),
              ),
            ),
            label: "Akun"
          ),
        ],
        showSelectedLabels: true,
        showUnselectedLabels :true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Align( 
              alignment: Alignment.centerLeft,
              child: Text("Hi, Budi!", style: TextStyle(fontSize: 20.0)),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                  )
                ),
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          const Icon(Icons.wallet, color: Colors.brown),
                          Container(
                            child: Text(
                              "Store Credit Rp.0",
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                            width: 50,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      color: Colors.black,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.loyalty, color: Colors.brown),
                          Container(
                            child: Text(
                              "Reward Point 100 Point",
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                            width: 50,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 50,
                      color: Colors.black,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.confirmation_num, color: Colors.brown),
                          Container(
                            child: Text(
                              "Kupon Saya 11 Kupon",
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                            width: 50,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:10, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.storefront), iconSize: 34,),
                        const Text("Official Store")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.local_fire_department_rounded), iconSize: 34, color: Colors.red[700],),
                        const Text("Hot Deal")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.checkroom), iconSize: 34,),
                        const Text("Fashion")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.face_retouching_natural), iconSize: 34,),
                        const Text("Komestik")
                      ],
                    ),
                  )
                ],
              ),
            ),
            CarouselSlider(
              items: carouselItems,
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}