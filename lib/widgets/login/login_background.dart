import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({Key? key}) : super(key: key);

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
            top: 70,
            left: size.width / 2 - 50,
            child: const Image(
              image: AssetImage('assets/logo-simca.png'),
            )),
        Positioned(
          bottom: 30,
          left: size.width - 60,  
          child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.46),
            shape: BoxShape.circle
          ),
          child: IconButton(
            iconSize: 30,
            onPressed: () {}, 
            icon: const Icon(Icons.language_outlined)
          ),
        ))
      ],
    );
  }
}
