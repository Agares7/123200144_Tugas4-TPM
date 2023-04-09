import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Profile Saya',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Sans-Serif',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/amar.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Muhammad Amar Maruf',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '123200122',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/davit.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Davit Septiawan',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '123200133',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/ardhian.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Ardhian Kusumayuda',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '123200144',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
