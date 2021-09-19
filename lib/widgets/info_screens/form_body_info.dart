import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class FormBodyInfo extends StatelessWidget {
  const FormBodyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 130, left: 15, right: 15),
      child: Container(
        width: double.infinity,
        height: size.height * 0.65,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 0.35),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DropDownScreens(),
                Container(height: 50, width: 300, color: Colors.black, margin: const EdgeInsets.only(bottom: 50),),
                Container(height: 50, width: 300, color: Colors.black, margin: const EdgeInsets.only(bottom: 50),),
                Container(height: 50, width: 300, color: Colors.black, margin: const EdgeInsets.only(bottom: 50),),
                Container(height: 50, width: 300, color: Colors.black, margin: const EdgeInsets.only(bottom: 50),),
                Container(height: 50, width: 300, color: Colors.black, margin: const EdgeInsets.only(bottom: 50),),
                Container(height: 50, width: 300, color: Colors.black, margin: const EdgeInsets.only(bottom: 50),),
                Container(height: 50, width: 300, color: Colors.black, margin: const EdgeInsets.only(bottom: 50),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
