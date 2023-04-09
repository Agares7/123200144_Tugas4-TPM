import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'tourism_place.dart';

class FavoriteTourismPlace extends StatelessWidget {
  const FavoriteTourismPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoritePlaces =
        tourismPlaceList.where((place) => place.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Tourism Place',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Sans-Serif',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: favoritePlaces.length,
        itemBuilder: (context, index) {
          final TourismPlace place = favoritePlaces[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    place: place,
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Image.network(place.imageUrls[0]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Text(place.name),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
