import 'package:flutter/material.dart';

class LatestEntries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Text('check');
            },
          )
        ],
      ),
    );
  }
}
