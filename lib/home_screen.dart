import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var value = '';
  _changeValue() {
    value = 'You are a Very Niece Human Being😊';
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'A Messege for you with 💖',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.deepPurpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _changeValue();
              },
              child: const Text(
                'Click Here',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 28.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
