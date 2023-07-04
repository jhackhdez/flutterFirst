import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2022/07/Sunset-somewhere-in-Iowa-By-Vath.-Sok-2.jpeg'),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://www.gardeningknowhow.com/wp-content/uploads/2020/12/lonely-japanese-cherry.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Un hermoso paisaje',
            imageUrl:
                'https://hips.hearstapps.com/hmg-prod/images/screen-shot-2018-07-11-at-5-06-55-pm-1531343396.png',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
