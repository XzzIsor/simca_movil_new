import 'package:flutter/material.dart';

class RequerimentsPensum extends StatelessWidget {
  const RequerimentsPensum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.85, left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(98, 144, 191, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'REQUISITOS DE GRADO',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(onPressed: () => Navigator.pushNamed(context, 'requirements'), icon: const Icon(Icons.arrow_right_sharp))
          ],
        ),
      ),
    );
  }
}
