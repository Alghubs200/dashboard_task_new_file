import 'package:flutter/material.dart';

import '../constants/app_constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(AppConstant.profile),
    );
  }
}
