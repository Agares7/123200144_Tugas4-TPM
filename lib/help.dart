import 'package:flutter/material.dart';
import 'login.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Help',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Sans-Serif',
                fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => new Login()),
                    (route) => false);
              },
            )
          ],
        ),

        body: Center(
            child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            Text(
              'Panduan Aplikasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            
            Text('Aplikasi ini adalah sebuah platform yang menyediakan informasi wisata dan fitur stopwatch yang memungkinkan pengguna untuk melihat profil mereka sendiri. Sebelum dapat menggunakan aplikasi ini, pengguna harus melakukan login terlebih dahulu. Berikut adalah langkah-langkah cara menggunakan aplikasi ini:',
            textAlign: TextAlign.justify,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1. '),
                Expanded(child: Text(
                  'Mengunduh dan menginstal aplikasi: Pengguna harus mengunduh dan menginstal aplikasi ini melalui toko aplikasi yang tersedia di perangkat mereka, seperti App Store atau Google Play Store.',
                  textAlign: TextAlign.justify,
                  )
                  ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2. '),
                Expanded(child: Text(
                  'Membuka aplikasi: Setelah aplikasi terinstal, pengguna dapat membukanya di perangkat user.',
                  textAlign: TextAlign.justify,
                  )
                  ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('3. '),
                Expanded(child: Text(
                  'Melakukan login: Pengguna harus melakukan login ke akun mereka untuk dapat mengakses fitur-fitur dalam aplikasi. Pengguna dapat memasukkan informasi login yaitu username dan password.',
                  textAlign: TextAlign.justify,
                  )
                  ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('4. '),
                Expanded(child: Text(
                  'Mengakses profil pengguna: Setelah berhasil login, pengguna dapat mengakses profil mereka di aplikasi. Ini bisa termasuk informasi pribadi pengguna, foto profil, dan informasi lain yang relevan.',
                  textAlign: TextAlign.justify,
                  )
                  ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('5. '),
                Expanded(child: Text(
                  'Melihat rekomendasi wisata: Pengguna dapat menggunakan fitur rekomendasi wisata yang disediakan dalam aplikasi. Ini bisa termasuk daftar tempat wisata populer, ulasan pengguna, dan informasi lain yang berguna untuk merencanakan perjalanan wisata.',
                  textAlign: TextAlign.justify,
                )
                  ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('6. '),
                Expanded(child: Text(
                  'Menggunakan stopwatch: Aplikasi juga menyediakan fitur stopwatch yang dapat digunakan oleh pengguna. Pengguna dapat memulai, menghentikan, dan mereset stopwatch sesuai kebutuhan, seperti mengukur waktu dalam aktivitas olahraga atau memantau waktu dalam kegiatan sehari-hari.',
                  textAlign: TextAlign.justify,
                )
                  ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('7. '),
                Expanded(child: Text(
                  'Logout: Setelah selesai menggunakan aplikasi, pengguna sebaiknya melakukan logout untuk menjaga keamanan akun mereka. Pengguna dapat memilih opsi logout yang disediakan dalam aplikasi untuk keluar dari akun mereka.',
                  textAlign: TextAlign.justify,
                )
                  ),
              ],
            ),

            Text('Pengguna dapat menikmati fitur-fitur yang disediakan, seperti melihat profil, melihat rekomendasi wisata, dan menggunakan stopwatch untuk membantu dalam kegiatan sehari-hari.',
            textAlign: TextAlign.justify,),
            ],
        )
        )
        );
       
  }
}
