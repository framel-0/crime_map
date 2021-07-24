import 'package:flutter/material.dart';

class CrimeMapCriticalFailure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              '⚠',
              style: TextStyle(fontSize: 50.0),
            ),
            const Text(
              'Unexpected Error. \nPlease, contact support.',
              style: TextStyle(fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.mail),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Send Mail')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
