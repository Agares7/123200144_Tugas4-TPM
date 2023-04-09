import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'tourism_place.dart';

class ListTourismPlace extends StatelessWidget {
  const ListTourismPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Tourism Place',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Sans-Serif',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            place: place,
                          )));
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
