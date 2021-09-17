import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBoxInformation extends StatelessWidget {
  const ProfileBoxInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const TextStyle _textStyle = TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
    return Container(
      width: size.width*0.8,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Semestre: 5', style: _textStyle,),
              Text('Promedio: 1.5', style: _textStyle),
              Text('Código: 564564678465', style: _textStyle),
              Text('Usuario: Patty Myculo', style: _textStyle)
            ],
          ),),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(255, 255, 255, 0.34),

      ),
      
    );
  }
}
