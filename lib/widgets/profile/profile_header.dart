import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/custom_dropdown.dart';
import 'package:simca_movil/widgets/widgets.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_profilePhoto(), _userName(), _simcaIcon()],
          ),
          const SizedBox(height: 20,),
          const ProfileBoxInformation(),
          const SizedBox(height: 30,),
          const CustomDropDown(),
          const SizedBox(height: 25,),
          const ProfileOptionsMenu()
        ],
      ),
    );
  }

  Widget _profilePhoto() {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/rata.jpg'), fit: BoxFit.fill),
          shape: BoxShape.circle),
    );
  }

  Widget _userName() {
    return const Text(
      'Daniel likes pps',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25

      ),
      overflow: TextOverflow.fade,
    );
  }

  Widget _simcaIcon() {
    return const SizedBox(
      height: 50,
      width: 50,
      child: Image(image: AssetImage('assets/logo-simca.png')));
  }
}
