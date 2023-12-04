import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItem {
  late String title;
  late IconData icon;
  late String pageUrl;
  late bool lastItem;
  DrawerItem(
      {required this.title,
      required this.icon,
      required this.pageUrl,
      required this.lastItem});
}

List<DrawerItem> drawerItems = [
  DrawerItem(
      title: "Profil",
      icon: FontAwesomeIcons.user,
      pageUrl: "/profile",
      lastItem: false),
  DrawerItem(
      title: "Pesanan Saya",
      icon: Icons.shopping_cart_outlined,
      pageUrl: "/order",
      lastItem: false),
  DrawerItem(
      title: "Favorit",
      icon: Icons.favorite_outline_outlined,
      pageUrl: "/favourite",
      lastItem: false),
  DrawerItem(
      title: "Tentang Kami",
      icon: Icons.group_outlined,
      pageUrl: "/aboutUs",
      lastItem: false),
];
