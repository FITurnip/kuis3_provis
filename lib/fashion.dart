import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fashion extends StatelessWidget {
  List<Image> carouselItems = [
    Image.network('https://picsum.photos/id/10/500/200'),
    Image.network('https://picsum.photos/id/11/500/200'),
    Image.network('https://picsum.photos/id/22/500/200'),
  ];

  Fashion({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: SingleChildScrollView(
            child: Container(
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
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari barang di Tokoo',
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart, color: Colors.white,),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: Colors.white,),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message, color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Hi, Budi!", style: TextStyle(fontSize: 20.0)),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  Container(
                    padding: const EdgeInsets.all(7.5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.wallet),
                        Expanded(
                          child: Text(
                            "Store Credit Rp.0",
                            overflow: TextOverflow.clip,
                            style: TextStyle(fontSize: 13)
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(7.5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.payment),
                        Expanded(
                          child: Text(
                            "Reward Point 100 Point",
                            overflow: TextOverflow.clip,
                            style: TextStyle(fontSize: 13)
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(7.5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.payment),
                        Expanded(
                          child: Text(
                            "Kupon Saya 11 Kupon",
                            overflow: TextOverflow.clip,
                            style: TextStyle(fontSize: 13)
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.storefront), iconSize: 34,),
                      Text("Official Store")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.local_fire_department_rounded), iconSize: 34, color: Colors.red,),
                      Text("Hot Deal")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.storefront), iconSize: 34,),
                      Text("Fashion")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.face_retouching_natural), iconSize: 34,),
                      Text("Komestik")
                    ],
                  ),
                )
              ],
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
