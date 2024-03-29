import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Fashion extends StatefulWidget {
  final BuildContext context;
  Fashion({required this.context});

  @override
  _Fashion createState() => _Fashion();
}

class _Fashion extends State<Fashion> {
  List<Image> carouselItems = [
    Image.network('https://picsum.photos/id/10/500/200'),
    Image.network('https://picsum.photos/id/11/500/200'),
    Image.network('https://picsum.photos/id/22/500/200'),
  ];

  int idx = 0; //index yang aktif
  
  //isi body akan sesuai index
  static const List<Center> halaman = [
    Center(child: Text("satu")),
    Center(child: Text("dua")),
    Center(child: Text("tiga")),
    Center(child: Text("empat")),
    Center(child: Text("lima")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0), // Set your preferred height here
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
        currentIndex: idx,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        onTap: (index) {
          // idx = index;
        }, //event saat button di tap
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
