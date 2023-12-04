import 'package:flutter/material.dart';

import 'social_card.dart';

class SocialMediaBox extends StatelessWidget {
  const SocialMediaBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SocialCard(
              svgIconPath: "assets/icons/google.svg",
            ),
            SocialCard(
              svgIconPath: "assets/icons/facebook.svg",
            ),
            SocialCard(
              svgIconPath: "assets/icons/twitter.svg",
            ),
          ],
        ),
        Text(
          "Dengan melanjutkan, Anda mengonfirmasi bahwa \nAnda menyetujui syarat dan ketentuan kami",
          style: Theme.of(context).textTheme.caption,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
