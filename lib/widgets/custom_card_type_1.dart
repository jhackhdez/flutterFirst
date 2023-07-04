import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un título'),
            subtitle: Text(
                'Eu aliquip occaecat magna irure nisi reprehenderit irure nostrud anim nostrud. Pariatur non magna duis in commodo eiusmod deserunt pariatur qui minim. Mollit sunt eiusmod laboris dolor consequat officia commodo ipsum. Laboris quis incididunt elit consequat ullamco consequat id dolore duis irure nostrud irure cupidatat. Enim nisi culpa occaecat ut ullamco cillum aute eu nostrud. Ex excepteur ullamco nostrud fugiat.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
