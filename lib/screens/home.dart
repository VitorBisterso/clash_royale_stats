import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _tagController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/general/bg.png',
          alignment: Alignment.center,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          opacity: const AlwaysStoppedAnimation(.5),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/general/clash_royale_logo.png',
                  width: 300,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Enter the player tag',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(35, 35, 35, 1),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'ABC123456',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  controller: _tagController,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('SEARCH'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
