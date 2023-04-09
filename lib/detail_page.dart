import 'package:flutter/material.dart';
import 'tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final TourismPlace place;
  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
  //final TourismPlace place?;
  //const DetailPage ({ Key? key, this.place }) : super(key: key);
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Halaman Detail',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Sans-Serif',
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                final snackBar = SnackBar(
                  content: Text(
                    widget.place.isFavorite ? "Bukan Favorit lagi" : "Berhasil Ditambahkan Ke Favorit",
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                setState(() {
                  widget.place.isFavorite = !widget.place.isFavorite;
                });
              },
              icon: Icon(
                widget.place.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.place.imageUrls.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        widget.place.imageUrls[index],
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text('${widget.place.openDays}'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text('${widget.place.openTime}'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text(
                'Harga Tiket : ' + '${widget.place.ticketPrice}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Text('${widget.place.description}',
                  textAlign: TextAlign.justify),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 10, 80, 0),
              child: ElevatedButton(
                  onPressed: () {
                    _launchInBrowser('${widget.place.wikiUrl}');
                  },
                  child: Text('See Details !')),
            )
          ],
        ));
  }

  Future<void> _launchInBrowser(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $url');
    }
  }
}
