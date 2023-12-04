import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  static String routeName = "/aboutUs";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/upt.png",
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '''UPT Mekanisasi Pertanian Provinsi Sumatera Utara terletak di jalan Jendral Besar Dr. Abdul Haris Nasution No. 7 Medan Johor Provinsi Sumatera Utara.  UPT Mekanisasi Pertanian adalah salah satu unit pelaksana teknis Dinas Tanaman Pangan dan Holtikultura Provinsi Sumatera Utara yang berfungsi menyelenggarakan urusan pemerintahan di bidang ketatatusahaan, pelayanan teknis, rekayasa rancang bangun dan modifikasi alsintan, demonstrasi alsintan serta pengujian mutu alsintan.
        
        Pada awalnya UPT Mekanisasi Pertanian disebut sebagai Bengkel Induk Mekanisasi Pertanian yang berdiri pada tahun 1952 di bawah Bagian Mekanisasi Jawatan Pertanian Rakyat Sumatera Utara. Bengkel Induk Mahasiswa Mekanisasi memounyai peranan yang sangat penting dalam program peningkatan produksi pangan, khususnya pada pembukaan lahan-lahan pertanian baru dengan pemanfaatan traktor skala besar.
        
        Pada tahun 1981 Bengkel Induk berada di bawah seksi Alsintan (Alat dan Mesin Pertanian) Sub Bidang Produksi yang diberi tugas dan fungsi rancang bangun dan modifikasi alat dan mesin pertanian. Seperti power thresher, alat pengolah tanah dollat-dollat, corn sheller dll. Pengembangan alsintan hasil rancang bangun dan modifikasi ini telah disebarluaskan ke bengkel-bengkel binaan di seluruh kabupaten/kota.
        
        Pada tahun 2002 berdasarkan keputusan Gubernur Sumatera Utara Bengkel Induk Mekanisasi Pertanian digabung dengan Training Centre Jaya Tani menjadi UPT Perbengkelan dan Pelatihan Alsintan, kemudian pada tahun 2012 berdasarkan Peraturan Gubernur No. 30 Tahun 2011 UPT Perbengkelan dan Pelatihan Alsintan berubah menjadi UPT Mekanisasi Pertanian.''')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
