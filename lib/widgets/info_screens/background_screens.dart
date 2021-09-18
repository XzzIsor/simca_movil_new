import 'package:flutter/material.dart';

class BackgroundScreens extends StatelessWidget {
  const BackgroundScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                  Color.fromRGBO(18, 94, 169, 1),
                  Color.fromRGBO(13, 65, 133, 1)
                ],
                tileMode: TileMode.repeated,
              ),
            )),
        Positioned(
            top: 60,
            left: size.width -70,
            child: SizedBox(
              height: 60,
              width: 60,
              child: const Image(
                image: AssetImage('assets/logo-simca.png'),
              ),
            )),
      ],
    );
  }
}