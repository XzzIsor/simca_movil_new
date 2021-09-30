import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class FormBodyInfoEnrollment extends StatelessWidget {
  const FormBodyInfoEnrollment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListBodyCustom(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('En este momento no hay matrículas para su programa',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              child: Image(image: AssetImage('assets/simpson.jpg'), width: 250, height: 160,),
              borderRadius: BorderRadius.circular(25),
            ),
            
          ],
        )
      ),
    );
  }
}