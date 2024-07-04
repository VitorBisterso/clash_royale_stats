import 'package:clash_royale_stats/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:clash_royale_stats/screens/player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  var _tag = '';

  void _onSubmit() {
    if (!_formKey.currentState!.validate()) return;

    FocusManager.instance.primaryFocus?.unfocus();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => PlayerScreen(tag: _tag),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
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
                      TextFormField(
                        style: TextStyle(color: ColorConstants.textBlack),
                        decoration: const InputDecoration(
                          prefix: Text('#'),
                          hintText: 'ABC123456',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        maxLength: 9,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.trim().length != 9) {
                            return 'Must be exactly 9 characters long';
                          }

                          return null;
                        },
                        onSaved: (value) {
                          _tag = value!;
                        },
                      ),
                      const SizedBox(height: 32),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _onSubmit,
                          child: const Text('SEARCH'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
