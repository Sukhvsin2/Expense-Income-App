import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer({this.height, this.width});
  final height;
  final width;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(width * 0.1),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),
        ],
        borderRadius: BorderRadius.circular(height * 0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: height * 0.2,
            backgroundImage: NetworkImage(
                'https://source.unsplash.com/1600x900/?income,background'),
          ),
          Text('Title'),
          Text('Total Money')
        ],
      ),
      height: height,
      width: width,
    );
  }
}
