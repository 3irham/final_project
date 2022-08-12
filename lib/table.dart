import 'package:flutter/material.dart';

class Tabel extends StatelessWidget {
  const Tabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            bottom: 8.0,
          ),
          child: Table(
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(130),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(15),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: const [
              TableRow(
                children: [
                  Text('Current Task', style: TextStyle(fontSize: 21)),
                  Text(':', style: TextStyle(fontSize: 21)),
                  Text('Preparing B Project', style: TextStyle(fontSize: 21)),
                ],
              ),
              TableRow(
                children: [
                  Text('Deadline', style: TextStyle(fontSize: 21)),
                  Text(':', style: TextStyle(fontSize: 21)),
                  Text('20 May 2022', style: TextStyle(fontSize: 21)),
                ],
              ),
              TableRow(
                children: [
                  Text('Person in charge', style: TextStyle(fontSize: 21)),
                  Text(':', style: TextStyle(fontSize: 21)),
                  Text('Chong Lee', style: TextStyle(fontSize: 21)),
                ],
              ),
              TableRow(
                children: [
                  Text('Next Task', style: TextStyle(fontSize: 21)),
                  Text(':', style: TextStyle(fontSize: 21)),
                  Text('"To be Assigned"', style: TextStyle(fontSize: 21)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
