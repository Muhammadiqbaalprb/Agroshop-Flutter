import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsBanner extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/images/berita1.png',
    'assets/images/berita2.png',
    'assets/images/berita3.png',
    'assets/images/berita4.png',
  ];

  final List<String> texts = [
    'Pasar Perkawinan di Tengah Heboh \nMenteri Pertanian',
    'Bappenas Gelar SAC 2023 Bertema Air, \nEnergi, Pertanian, dan Ketahanan Pangan',
    'Serentak Hari Ini! RI Ekspor Pertanian \nRp 12 T ke 176 Negara',
    'Sektor Pertanian Penyumbang Terbesar Dalam \nPenurunan Angka Pengangguran di Kaltara'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageUrls.length,
      options: CarouselOptions(
          autoPlay: true, aspectRatio: 16 / 9, viewportFraction: 1.0),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.only(top: 50),
              child: Image.asset(
                imageUrls[index],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: 20.0,
              child: Text(
                texts[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
