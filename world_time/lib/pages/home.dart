import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    data = data=ModalRoute.of(context)?.settings.arguments as Map;
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color? bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];


    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/$bgImage'),
        fit: BoxFit.cover,
    )
    ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: <Widget>[
              TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: const Icon(Icons.edit_location),
                  label: const Text(
                      'Edit Location'
                  )
              ),
              const SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: const TextStyle(
                      fontSize: 80,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              Text(
                data['time'],
                style: const TextStyle(
                  fontSize: 50,
                  letterSpacing: 2,
                ),
              )

            ],
          ),
        ),
      ),
    )
    );
  }
}