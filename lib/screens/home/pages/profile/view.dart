import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Profile")
          ],
        ),
      ),
    );
  }
}
