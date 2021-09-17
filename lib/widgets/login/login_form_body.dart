import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class LoginFormBody extends StatelessWidget {
  const LoginFormBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [ Container(
        child: const LoginForm(),
        height: size.height * 0.45,
        width: size.width * 0.80,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(172, 199, 241, 1),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2.5,
                offset: Offset(5, 5),
              )
            ]),
      ), 
      
    ]
    );
  }
}
