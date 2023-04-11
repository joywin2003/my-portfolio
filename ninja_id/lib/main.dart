import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard()
  ));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.webp'),
                radius: 40,
              ),
            ),
            Divider(
              height: 100,
              color: Colors.grey[400],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                letterSpacing: 1.0,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
                'Joywin Bennis',
                style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
                ),
              ),

            const SizedBox(height: 20.0),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                letterSpacing: 1.0,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '14',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 18,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),
            Row(
                children: [
                Icon(
                Icons.email,
                color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text(
                    'joywinbennis0987@gmail.com',
                    style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                    ),
                  ),
                ]
              ),
            ],
          ),
        ),
    );
  }
}
