import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:store/presentation/screens/home/about_us.dart';
import 'package:store/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:store/presentation/widgets/custom_page_transition.dart';
import 'profile_menu.dart';
import 'profile_picture.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          const ProfilePicture(),
          const SizedBox(
            height: 20,
          ),
          ProfileMenu(
              text: "Profil Saya",
              icon: const Icon(
                Icons.supervised_user_circle,
              ),
              onPressed: () {}),
          ProfileMenu(
            text: "Tentang Kami",
            icon: const Icon(Icons.supervised_user_circle),
            onPressed: () {
              Navigator.push(
                  context,
                  CustomScaleTransition(
                      nextPageUrl: AboutUs.routeName,
                      nextPage: const AboutUs()));
            },
          ),
          ProfileMenu(
            text: "Keluar",
            icon: const Icon(Icons.supervised_user_circle),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
                (Route<dynamic> route) => false,
              );
              // Navigator.pushReplacementNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
