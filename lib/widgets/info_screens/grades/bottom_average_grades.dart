import 'package:flutter/material.dart';

class BottomAverageGrades extends StatelessWidget {
  const BottomAverageGrades({Key? key, required this.average}) : super(key: key);

  final String average;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextStyle _textStyle = const TextStyle(
        color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.89, left: 15, right: 15),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(96, 144, 191, 1),
        ),
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'PROMEDIO',
                  style: _textStyle,
                ),
                Text(
                  average,
                  style: _textStyle,
                )
              ],
            )),
      ),
    );
  }
}
