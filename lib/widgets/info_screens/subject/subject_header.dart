import 'package:flutter/material.dart';

class SubjectHeader extends StatelessWidget {
  const SubjectHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 40,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(42, 86, 167, 0.79)
        ),
        child: Center(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('MATERIAS MATRICULADAS', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          ),
        )

      ),
    );
  }
}