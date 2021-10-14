import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simca_movil/models/models.dart';

import 'package:simca_movil/services/services.dart';
import 'package:simca_movil/widgets/custom_dropdown.dart';
import 'package:simca_movil/widgets/widgets.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final programs = Provider.of<ProgramService>(context).programs;
    final person = Provider.of<PersonService>(context).person;

    List<String> namesProgram = [];

    for (var element in programs) {
      namesProgram.add(element.name);
    }

    return namesProgram.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.only(top: 60, left: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [_profilePhoto(), _userName(person), _simcaIcon()],
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProfileBoxInformation(),
                const SizedBox(
                  height: 30,
                ),
                CustomDropDown(
                  color: const Color.fromRGBO(255, 255, 255, 0.55),
                  options: namesProgram,
                  text: namesProgram[0],
                  width: 220,
                ),
                const SizedBox(
                  height: 25,
                ),
                const ProfileOptionsMenu()
              ],
            ),
          )
        : const Center(
            child: CircularProgressIndicator(),
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

  Widget _userName(String name) {
    return Text(
      name,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
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
