import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class FirstScreen extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2017/12/10/14/47/piza-3010062_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/06/07/01/49/ice-cream-1440830_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/12/27/07/07/brownie-3042106_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/02/25/07/15/food-3179853_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/10/26/11/10/honey-1006972_1280.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            CarouselSlider(
            options: CarouselOptions(
            autoPlay: false,

    ),
    items: imagesList
              .map(
    (item) => Center(
    child: Image.network(
    item,
    fit: BoxFit.cover,
    ),
    ),
    )
              .toList(),
    ),const SizedBox(width: 10.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0 ),
                    child: const Text('Live View',style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.left,),
                  ),
                ],
              ),
            Row(
              children: [
                Expanded(flex: 4,
                  child: Container(width: 200.0,
                    height: 220.0,
                    color: Colors.green,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                      ),
                ),
              ],
            ),
            const SizedBox(width: 10.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0 ),
                  child: const Text('New Arrivals',style: TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),textAlign: TextAlign.left,),
                ),
              ],
            ),

          ],
        ),
      );
  }
}
