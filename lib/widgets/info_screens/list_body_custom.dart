import 'package:flutter/material.dart';

class ListBodyCustom extends StatelessWidget {
  const ListBodyCustom({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(top: 135, left: 15, right: 15),
        child: Container(
            width: size.width * 0.90,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.35),
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                  child: child,
                  
              ),
            )
        )
    );
  }
}
