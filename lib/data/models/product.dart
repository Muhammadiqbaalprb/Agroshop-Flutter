import 'package:flutter/material.dart';

class Product {
  late final int id;
  late final String title;
  late final Map<String, String> description;
  late final String image;
  late final List<String> images;
  // late final List<Map<String, dynamic>> colors;
  late final double rating;
  late final String price;
  late final String category;
  late bool isFavourite, isPopular;
  // late DateTime createdAt;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    // required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.price,
    required this.image,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'images': images,
      'category': category,
      // 'colors': colors,
      'rating': rating,
      'price': price,
      'isFavourite': isFavourite,
      'isPopular': isPopular,
    };
  }

  Product.fromMap(dynamic map) {
    id = map['id'];
    title = map['title'];
    description = map['description'];
    image = map['image'];
    category = map['category'];
    images = map['images'];
    // colors = map['colors'];
    rating = map['rating'];
    price = map['price'];
    isFavourite = map['isFavourite'];
    isPopular = map['isPopular'];
  }
  Product toEntity() => Product(
        id: id,
        title: title,
        description: description,
        image: image,
        images: images,
        category: category,
        // colors: colors,
        rating: rating,
        price: price,
        isFavourite: isFavourite,
        isPopular: isPopular,
      );
}

// Demo data
List<Product> demoProducts = [
  Product(
    id: 1,
    image: "assets/images/1.png",
    images: [
      "assets/images/1.png",
    ],
    category: "",
    // colors: [
    //   // {"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
    //   // {"colorName": "Purple", "color": Color.fromRGBO(131, 109, 184, 1)},
    //   // {"colorName": "Gold", "color": const Color(0xFFDECB9C)},
    // ],
    title: "Alat Pengering (Dryer)",
    price: '500.000',
    description: {
      "headline": "Alat Pengering (Dryer)",
      "description":
          "Dryer berfungsi sebagai mesin pengering untuk bahan padi, jagung, dan produk pertanian lainnya, mesin ini sering dikenal dengan nama box dryer."
    },
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    image: "assets/images/2.png",
    images: [
      "assets/images/2.png",
    ],
    category: "",
    // colors: [
    //   {"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
    //   {"colorName": "Purple", "color": const Color(0xFF836DB8)},
    //   {"colorName": "Gold", "color": const Color(0xFFDECB9C)},
    //   {"colorName": "Red", "color": const Color(0xE7FF0D29)}
    // ],
    title: "Hand Sprayer",
    price: '500.000',
    description: {
      "headline": "Alat Penyemprot Manual (Hand Sprayer)",
      "description":
          "alat semprot pertanian yang biasa digunakan untuk menyiram tanaman atau semprot hama pada tumbuhan secara manual"
    },
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    image: "assets/images/3.png",
    images: [
      "assets/images/3.png",
    ],
    category: "",
    // colors: [
    //   {"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
    //   {"colorName": "Purple", "color": const Color(0xFF836DB8)},
    //   {"colorName": "Gold", "color": const Color(0xFFDECB9C)},
    //   {"colorName": "Red", "color": const Color(0xE7FF0D29)}
    // ],
    title: "Semprot tanaman semi",
    price: '750.000',
    description: {
      "headline": "Alat semprot tanaman manual sprayer semi otomatis sprayer",
      "description":
          "alat penyemprot pestisida menjadi butiran halus yang menyerupai kabut agar penyemprotan merata"
    },
    rating: 4.1,
    isFavourite: false,
  ),
  Product(
    id: 4,
    image: "assets/images/4.png",
    images: [
      "assets/images/4.png",
    ],
    category: "",
    // colors: [
    //   {"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
    //   {"colorName": "Purple", "color": const Color(0xFF836DB8)},
    //   {"colorName": "Gold", "color": const Color(0xFFDECB9C)},
    //   {"colorName": "Red", "color": const Color(0xE7FF0D29)}
    // ],
    title: "Alat Perajang Ubi",
    price: '100.000',
    description: {
      "headline": "Alat Iris Pengiris Rajang Perajang Ubi",
      "description":
          "Perajang ubi merupakan alat-mesin yang dilengkapi dengan pisau pengiris, lubang pemasukan, dan lubang pengeluaran hasil potongan."
    },
    rating: 4.1,
    isFavourite: false,
  ),
  Product(
    id: 5,
    image: "assets/images/5.png",
    images: [
      "assets/images/5.png",
    ],
    category: "",
    // colors: [
    //   {"colorName": "Red Rose", "color": const Color(0xFFF6625E)},
    //   {"colorName": "Purple", "color": const Color(0xFF836DB8)},
    //   {"colorName": "Gold", "color": const Color(0xFFDECB9C)},
    //   {"colorName": "Red", "color": const Color(0xE7FF0D29)},
    //   {"colorName": "Yellow", "color": const Color(0xE7FFD70D)}
    // ],
    title: "Alat Tanam Biji-Bijian",
    price: '350.000',
    description: {
      "headline": "Alat Tanam Jagung dan Biji-Bijian AGR-PN22",
      "description":
          "alat tanam biji bijian yang mampu membuka tanah, menjatuhkan biji bijian kemudian menutup kembali tanah yang bekerja dengan cara ditarik"
    },
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    image: "assets/images/6.png",
    images: [
      "assets/images/6.png",
    ],
    category: "",
    title: "Mesin APPO",
    price: '1.800.000',
    description: {
      "headline": "Mesin alat pengolah pupuk organik APPO",
      "description":
          "APPO merupakan mesin/ alat pencacah pupuk organik, fungsinya memotong, menghancurkan dan menghaluskan jerami,daun dan bahan organik lain sebagai bahan pupuk organik ataupun pakan ternak."
    },
    rating: 4.4,
    isFavourite: true,
    isPopular: false,
  ),
  Product(
    id: 7,
    image: "assets/images/7.png",
    images: [
      "assets/images/7.png",
    ],
    category: "",
    title: "Cangkul",
    price: '100.000',
    description: {
      "headline": "Cangkul lengkap + mata",
      "description": "description"
    },
    rating: 4.4,
    isFavourite: true,
    isPopular: false,
  ),
  Product(
    id: 8,
    image: "assets/images/8.png",
    images: [
      "assets/images/8.png",
    ],
    category: "",
    title: "Dodos Sawit",
    price: '100.000',
    description: {
      "headline": "Dodos Sawit",
      "description":
          "Dodos adalah alat pemanen kelapa sawit untuk pohon yang masih rendah atau masih muda."
    },
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 9,
    image: "assets/images/9.png",
    images: [
      "assets/images/9.png",
    ],
    category: "",
    title: "Mesin power weeder",
    price: '100.000',
    description: {
      "headline": "Mesin melandak power weeder",
      "description":
          "salah satu dari berbagai perangkat untuk menghilangkan gulma dari suatu area"
    },
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 10,
    image: "assets/images/10.png",
    images: [
      "assets/images/10.png",
    ],
    category: "",
    title: "Mesin Panen Padi",
    price: '2.500.000',
    description: {
      "headline": "Mesin Panen Padi Kombinasi",
      "description":
          "alat panen dengan 3 fungsi yaitu sebagai alat panen, alat padi dan juga sebagai alat pembajak sawah."
    },
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 11,
    image: "assets/images/11.png",
    images: [
      "assets/images/11.png",
    ],
    category: "",
    title: "Mesin Pemeras Jeruk",
    price: '350.000',
    description: {
      "headline": "Mesin Pemeras Jeruk",
      "description":
          "mesin yang digunakan untuk memeras sari buah jeruk dengan optimal. Mesin ini secara langsung mampu memisahkan hasil perasan jeruk dari kulit dan bijinya."
    },
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 12,
    image: "assets/images/12.png",
    images: [
      "assets/images/12.png",
    ],
    category: "",
    title: "Mesin Press Santan",
    price: '500.000',
    description: {
      "headline": "Mesin Press Santan",
      "description":
          "Mesin yang berfungsi untuk mengepress atau memeras kelapa menjadi santan."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 13,
    image: "assets/images/13.png",
    images: [
      "assets/images/13.png",
    ],
    category: "",
    title: "Mesin (Corn Sheller)",
    price: '1.200.000',
    description: {
      "headline": "Mesin Pemipil Jagung (Corn Sheller)",
      "description":
          "Mesin Corn Sheller atau mesin pemipil jagung adalah mesin yang memisahkan biji jagung dari tongkolnya. Mesin Corn Sheller terdiri dari beberapa komponen yaitu motor DC, poros, pulley, sabuk V, poros pemipil, mata pemipil, corong masuk, corong keluar, dan rangka."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 14,
    image: "assets/images/14.png",
    images: [
      "assets/images/14.png",
    ],
    category: "",
    title: "Pencabut Bulu Ayam",
    price: '1.200.000',
    description: {
      "headline": "Mesin Pencabut Bulu Ayam",
      "description":
          "mesin yang digunakan untuk memisahkan bulu ayam atau bebek secara cepat mudah."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 15,
    image: "assets/images/15.png",
    images: [
      "assets/images/15.png",
    ],
    category: "",
    title: "Mesin Pencacah Hijauan",
    price: '1.200.000',
    description: {
      "headline": "Mesin Pencacah Hijauan Pakan Ternak (Chopper)",
      "description":
          "Chopper merupakan adalah mesin yang digunakan untuk merajang rumput rumputan yang sebagai bahan pakan ternak. Selain itu juga dapat pula digunakan untuk merajang daun-daunan hijau lainnya, seperti merajang daun nilam, jerami."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 16,
    image: "assets/images/16.png",
    images: [
      "assets/images/16.png",
    ],
    category: "",
    title: "Mesin Hammer Mill",
    price: '1.300.000',
    description: {
      "headline": "Mesin Penggiling Jagung (Hammer Mill)",
      "description":
          "Mesin hammer mill adalah alat merubah ukuran suatu bahan baku produksi menjadi butiran- butiran tepung yang sangat halus."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 17,
    image: "assets/images/17.png",
    images: [
      "assets/images/17.png",
    ],
    category: "",
    title: "Mesin penggiling daging",
    price: '500.000',
    description: {
      "headline": "Mesin penggiling daging",
      "description":
          "mesin yang berfungsi untuk menghaluskan dan melebutkan berbagai jenis daging yang akan digunakan sebagai bahan makanan atau campuran makanan."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 18,
    image: "assets/images/18.png",
    images: [
      "assets/images/18.png",
    ],
    category: "",
    title: "Mesin mini rice milling",
    price: '1.500.000',
    description: {
      "headline": "Mesin mini rice milling",
      "description":
          "Rice Milling Unit adalah mesin pengupas kulit gabah menjadi beras berkapasitas 200 kg/jam."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 19,
    image: "assets/images/19.png",
    images: [
      "assets/images/19.png",
    ],
    category: "",
    title: "Perontok Pedal Tresher",
    price: '750.000',
    description: {
      "headline": "Mesin Perontok Padi tipe(Pedal Tresher)",
      "description":
          "thresher merupakan alat untuk merontokkan padi menjadi gabah. Alat ini merupakan alat bantu bagi tenaga kerja untuk memisahkan gabah dengan jeraminya,sehingga penggunaan pedal thresher menjadi satu kesatuan dengan tenaga kerja panen."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 20,
    image: "assets/images/20.png",
    images: [
      "assets/images/20.png",
    ],
    category: "",
    title: "Mesin rice milling",
    price: '2.000.000',
    description: {
      "headline": "Mesin rice milling",
      "description":
          "Rice Milling Unit adalah mesin pengupas kulit gabah menjadi beras."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 21,
    image: "assets/images/21.png",
    images: [
      "assets/images/21.png",
    ],
    category: "",
    title: "Mesin penggiling karet",
    price: '500.000',
    description: {
      "headline": "Mesin penggiling karet",
      "description":
          "mesin  pengolah limbah karet yang menghasilkan lembaran lembaran karet."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 22,
    image: "assets/images/22.png",
    images: [
      "assets/images/22.png",
    ],
    category: "Material Sedang",
    title: "Mesin Chopper",
    price: '1.800.000',
    description: {
      "headline": "Mesin Penghancur Bahan Baku Pupuk Organik (APPO)",
      "description":
          "(chopper) merupakan mesin pengolah sampah yang berfungsi untuk mencacah berbagai jenis sampah organik seperti rumput, limbah sayur, limbah buah,daun, ranting kecil dan sampah organik lainnya menjadi ukuran berbentuk kecil."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 23,
    image: "assets/images/23.png",
    images: [
      "assets/images/23.png",
    ],
    category: "",
    title: "Mesin pengiris bawang",
    price: '500.000',
    description: {
      "headline": "Mesin pengiris bawang",
      "description":
          "mesin yang berfungsi untuk mengiris bawang merah dengan mudah dan dalam waktu yang relatif singkat."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 24,
    image: "assets/images/24.png",
    images: [
      "assets/images/24.png",
    ],
    category: "",
    title: "Mesin perajang ubi",
    price: '400.000',
    description: {
      "headline": "mesin perajang ubi",
      "description":
          "Mesin perajang ubi adalah alat bantu untuk merajang ubi menjadi lembaran-lembaran tipis dengan ketebalan yang dapat disesuaikan yakni berkisar antara 1 s.d 5 mm tergantung kebutuhan kita."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 26,
    image: "assets/images/25.png",
    images: [
      "assets/images/25.png",
    ],
    category: "",
    title: "Mesin press santan",
    price: '500.000',
    description: {
      "headline": "Mesin press santan",
      "description":
          "Mesin yang berfungsi untuk mengepress atau memeras kelapa menjadi santan."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 25,
    image: "assets/images/26.png",
    images: [
      "assets/images/26.png",
    ],
    category: "",
    title: "Mesin power tresher",
    price: '1.500.000',
    description: {
      "headline": "Mesin power tresher",
      "description":
          "Power thresher adalah alat perontok padi yang menggunakan motor bakar sebagai sumber tenaga penggeraknya."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 27,
    image: "assets/images/27.png",
    images: [
      "assets/images/27.png",
    ],
    category: "",
    title: "Mesin walking type",
    price: '1.000.000',
    description: {
      "headline": "Mesin walking type",
      "description":
          "mesin tanam padi yang dapat beroperasi dalam lahan yang basah ataupun berlumpur"
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 28,
    image: "assets/images/28.png",
    images: [
      "assets/images/28.png",
    ],
    category: "",
    title: "Mesin Paddy combine",
    price: '2.500.000',
    description: {
      "headline": "Mesin Paddy combine harvester",
      "description":
          "alat panen dengan 3 fungsi yaitu sebagai alat panen, alat perontok padi dan juga sebagai alat pembajak sawah."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 29,
    image: "assets/images/29.png",
    images: [
      "assets/images/29.png",
    ],
    category: "",
    title: "Mesin paddy mower",
    price: '500.000',
    description: {
      "headline": "Mesin paddy mower",
      "description":
          "Salah satu alternatif mesin yang dapat digunakan untuk memanen padi di lahan yang sempit/bergelombang."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 30,
    image: "assets/images/30.png",
    images: [
      "assets/images/30.png",
    ],
    category: "",
    title: "Mesin Pod Breaker",
    price: '1.250.000',
    description: {
      "headline": "Pemecah Buah dan Pemisah Biji Kakao Basah",
      "description":
          "sebuah alat atau mesin yang memiliki fungsi untuk memecahkan buah kakao hingga keluar bijinya."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 31,
    image: "assets/images/31.png",
    images: [
      "assets/images/31.png",
    ],
    category: "",
    title: "Mesin (Paddy Husker)",
    price: '1.250.000',
    description: {
      "headline": "Mesin Pemecah Kulit Beras (Paddy Husker)",
      "description":
          "Alat mesin yang digunakan untuk mengupas kulit gabah sehingga menjadi beras pecah kulit."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 32,
    image: "assets/images/32.png",
    images: [
      "assets/images/32.png",
    ],
    category: "",
    title: "Mesin Sortasi",
    price: '1.250.000',
    description: {
      "headline": "Mesin Pemisah Biji Kopi/Kakao (Sortasi)",
      "description":
          "alat pemisah biji kopi yang telah bersih dari kulit tanduk dan kulit ari berdasarkan klasifikasi ukuran namun belum sampai ke penggolongan toingkat mutu."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 33,
    image: "assets/images/33.png",
    images: [
      "assets/images/33.png",
    ],
    category: "",
    title: "Mesin (Flat Bed Dryer)",
    price: '3.000.000',
    description: {
      "headline": "Mesin Pengering Gabah Tipe Bak (Flat Bed Dryer)",
      "description":
          "Untuk  mengeringkan  gabah,  ketebalan  optimum  gabah  pada  saat pengeringan menggunakan FBD adalah 40-70 cm dengen kecepatan angin 0,15-0,25 m/s."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 34,
    image: "assets/images/34.png",
    images: [
      "assets/images/34.png",
    ],
    category: "",
    title: "Mesin Penggiling Tebu",
    price: '1.250.000',
    description: {
      "headline": "Mesin Penggiling Tebu",
      "description":
          "alat yang berfungsi memeras tebu untuk menghsilkan sebuah sari tebu."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 35,
    image: "assets/images/35.png",
    images: [
      "assets/images/35.png",
    ],
    category: "",
    title: "Mesin (Vacuum Frying)",
    price: '1.500.000',
    description: {
      "headline": "Mesin Penggoreng Vakum (Vacuum Frying)",
      "description":
          "alat pengolah komoditas peka panas menjadi hasil olahan berupa keripik."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 36,
    image: "assets/images/36.png",
    images: [
      "assets/images/36.png",
    ],
    category: "",
    title: "Mesin Pengiris Bawang Manual",
    price: '100.000',
    description: {
      "headline": "Mesin Pengiris Bawang Manual",
      "description":
          "alat untuk mencincang bawang dengan halus sehingga bisa langsung dijadikan sebagai bumbu masakan atau pembuatan makanan."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 37,
    image: "assets/images/37.png",
    images: [
      "assets/images/37.png",
    ],
    category: "",
    title: "Mesin Pengupas Buah Pinang",
    price: '1.150.000',
    description: {
      "headline": "Mesin Pengupas Buah Pinang",
      "description":
          "alat yang digunakan untuk mempermudah pekerjaan dalam mengupas buah pinang."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 38,
    image: "assets/images/38.png",
    images: [
      "assets/images/38.png",
    ],
    category: "",
    title: "Mesin (Spinner)",
    price: '500.000',
    description: {
      "headline": "Mesin Peniris Tipe Sentrifugal (Spinner)",
      "description":
          "Mesin spinner ini menggunakan gaya sentrifugal untuk meniriskan minyak . Cara kerjanya yaitu makanan ringan akan diputar di dalam tabung peniris sehingga minyak akan tertiris dan keluar melalui keran."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 39,
    image: "assets/images/39.png",
    images: [
      "assets/images/39.png",
    ],
    category: "",
    title: "Mesin (Rice Milling)",
    price: '2.000.000',
    description: {
      "headline": "Mesin Penggiling Gabah (Rice Milling)",
      "description":
          "Rice Milling Unit adalah mesin pengupas kulit gabah menjadi beras."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 40,
    image: "assets/images/40.png",
    images: [
      "assets/images/40.png",
    ],
    category: "",
    title: "Pengiris Bawang Manual",
    price: '100.000',
    description: {
      "headline": "Pengiris Bawang Manual",
      "description":
          "alat untuk mencincang bawang dengan halus sehingga bisa langsung dijadikan sebagai bumbu masakan atau pembuatan makanan."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 41,
    image: "assets/images/41.png",
    images: [
      "assets/images/41.png",
    ],
    category: "",
    title: "Mesin Pedal Tresher",
    price: '750.000',
    description: {
      "headline": "Mesin Perontok Padi Tipe Pedal (Pedal Tresher)",
      "description":
          "thresher merupakan alat untuk merontokkan padi menjadi gabah. Alat ini merupakan alat bantu bagi tenaga kerja untuk memisahkan gabah dengan jeraminya,sehingga penggunaan pedal thresher menjadi satu kesatuan dengan tenaga kerja panen."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 42,
    image: "assets/images/42.png",
    images: [
      "assets/images/42.png",
    ],
    category: "",
    title: "Sabit Gerigi",
    price: '100.000',
    description: {
      "headline": "Sabit Gerigi",
      "description":
          "Sabit atau arit bergerigi. sabit ini dibuat khusus untuk dipergunakan saat memanen padi."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 43,
    image: "assets/images/roda2.png",
    images: [
      "assets/images/roda2.png",
    ],
    category: "",
    title: "Mesin Roda 2",
    price: '100.000',
    description: {
      "headline": "Mesin Roda 2",
      "description":
          "tenaga penggerak untuk sejumlah alat dan mesin pertanian seperti bajak, garu, dan glebek"
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 44,
    image: "assets/images/roda4.png",
    images: [
      "assets/images/roda4.png",
    ],
    category: "",
    title: "Mesin Roda 2",
    price: '50.000',
    description: {
      "headline": "Mesin Roda 4",
      "description":
          "kendaraan beroda 4 yang didesain secara spesifik untuk keperluan traksi tinggi pada kecepatan rendah, atau untuk menarik trailer atau implemen yang digunakan dalam pertanian."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 45,
    image: "assets/images/45.png",
    images: [
      "assets/images/45.png",
    ],
    category: "",
    title: "Mesin combine harvester",
    price: '100.000',
    description: {
      "headline": "Mesin combine harvester",
      "description":
          "alat panen dengan 3 fungsi yaitu sebagai alat panen, alat perontok padi dan juga sebagai alat pembajak sawah, TARIF PERHARI."
    },
    rating: 4.4,
    isFavourite: false,
    isPopular: true,
  ),
];
