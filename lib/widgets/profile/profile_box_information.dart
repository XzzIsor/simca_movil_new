import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simca_movil/services/services.dart';

class ProfileBoxInformation extends StatelessWidget {
  const ProfileBoxInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final student = Provider.of<StudentService>(context).getStudentAuth();

    final size = MediaQuery.of(context).size;
    const TextStyle _textStyle = TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
    return Container(
      width: size.width * 0.8,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Semestre: ${student.history.length + 1}',
              style: _textStyle,
            ),
            Text('Promedio: 1.5', style: _textStyle),
            Text('Código: ${student.id}', style: _textStyle),
            Text('Usuario: ${student.user}', style: _textStyle)
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(255, 255, 255, 0.34),
      ),
    );
  }
}
