import 'package:flutter/material.dart';
import 'profile.dart';
import 'myhomepage.dart';

class Presence extends StatelessWidget {
  const Presence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scan Presence'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 20),
                child: const Text(
                  'Scan to make a presence',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const Divider(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                child: const Text(
                  'Presence\'s history: ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                child: const Text(
                  '21.03.2020 at 10:00',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                child: const Text(
                  '22.03.2020 at 10:00',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                child: const Text(
                  '23.03.2020 at 10:00',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                child: const Text(
                  '24.03.2020 at 10:00',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                child: const Text(
                  '25.03.2020 at 10:00',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                child: const Text(
                  '26.03.2020 at 10:00',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                child: const Text(
                  '27.03.2020 at 10:00',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Scan Successful'),
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),
              ),
            );
          },
          backgroundColor: Colors.yellow,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          child: const Icon(Icons.fingerprint),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomSheet: Container(
          height: 50,
          color: Colors.orange,
        ),
      ),
    );
  }
}
