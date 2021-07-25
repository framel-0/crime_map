import 'package:flutter/material.dart';

import '../../../domain/crime/crime.dart';
import '../../core/colors.dart';

class CrimeDetailPage extends StatelessWidget {
  const CrimeDetailPage({Key? key, required this.crime}) : super(key: key);

  final Crime crime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crime Detail'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              'Location: ${crime.latitude.getOrCrash()} , ${crime.longitude.getOrCrash()}',
              style: Theme.of(context)
                  .primaryTextTheme
                  .headline6!
                  .copyWith(color: colorSecondaryDark, fontSize: 17.0),
            ),
            subtitle: Text(
              'Report Number: ${crime.reportNumber}',
              style: Theme.of(context)
                  .primaryTextTheme
                  .subtitle2!
                  .copyWith(color: Colors.black),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/gifs/loading_rings.gif',
              image: crime.image.getOrCrash(),
            ),
          )),
        ],
      ),
    );
  }
}
