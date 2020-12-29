import 'package:expoin/views/components/boxContainer.dart';
import 'package:expoin/views/components/latestEntries.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => chooseOption(context),
          );
        },
        backgroundColor: Colors.indigoAccent,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'ExpoIN',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Username'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxContainer(
                  height: height * 0.2,
                  width: width * 0.4,
                ),
                BoxContainer(
                  height: height * 0.2,
                  width: width * 0.4,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Graphs'),
            SizedBox(
              height: 20,
            ),
            Text('Latest Entries'),
            LatestEntries(),
          ],
        ),
      ),
    );
  }
}

Widget chooseOption(context) {
  return Container(
    child: SimpleDialog(
      children: [
        FlatButton(
          onPressed: null,
          child: Text('Income'),
        ),
        FlatButton(
          onPressed: null,
          child: Text('Expense'),
        ),
      ],
    ),
  );
}
