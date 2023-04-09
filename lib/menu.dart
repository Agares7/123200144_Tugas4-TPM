import 'package:flutter/material.dart';
import 'package:tugas4_tpm/favorite_tourism.dart';
import 'list_tourism.dart';
import 'stopwatch.dart';
import 'profile_menu.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Menu',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Sans-Serif',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: const Text('Profile'))),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 40.0,
                height: 40.0,
              ),
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StopwatchPage()),
                      );
                    },
                    child: const Text('Stopwatch'))),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 40.0,
                height: 40.0,
              ),
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListTourismPlace()),
                      );
                    },
                    child: const Text('List Tourism Place'))),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 40.0,
                height: 40.0,
              ),
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavoriteTourismPlace()),
                      );
                    },
                    child: const Text('Favorite Tourism Place'))),
          ],
        ),
      ),
    );
  }
}
