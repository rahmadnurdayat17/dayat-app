import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ImageSection(),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: TitleSection(),
              ),
              SizedBox(
                height: 35,
              ),
              TombolSection(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: DeskripsiSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Image.asset(
        'images/dayat.jpeg',
        fit: BoxFit.cover,
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gunung Telomolyo',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text('Salatiga, Jawa tengah'),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.favorite,
              size: 23,
              color: Colors.amber,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              10.0.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class TombolSection extends StatelessWidget {
  const TombolSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.call,
              size: 25,
              color: Colors.blue,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'CALL',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.near_me,
              size: 25,
              color: Colors.blue,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'ROUTE',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.share,
              size: 25,
              color: Colors.blue,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'SHARE',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DeskripsiSection extends StatelessWidget {
  const DeskripsiSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        'Gunung Telomoyo adalah gunung yang terletak di wilayah Kabupaten Semarang dan Kabupaten Magelang, Jawa Tengah. Gunung ini memiliki ketinggian 1.894 m dpl dan merupakan gunung api yang berbentuk strato (kerucut) tetapi belum pernah tercatat meletus. Ia terlihat dari kota-kota sekitarnya, seperti Salatiga, Ambarawa, dan Secang, Magelang.Gunung ini diapit oleh Gunung Merbabu, Gunung Andong, Gunung Sumbing, dan Gunung Ungaran. Gunung Telomoyo ini terbentuk dari sisi selatan Gunung Soropati yang telah tererosi dan runtuh sejak masa Pleistosen. Akibat runtuhan ini, terbentuk cekungan berbentuk U yang membuka ke arah tenggara. Gunung Telomoyo muncul di sebelah selatan depresi ini setinggi 600 m dari dasar cekungan.');
  }
}
