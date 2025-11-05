import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/flutter');
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xC66FD2FF),
                child: Center(
                  child: SizedBox(
                    width: 170,
                    height: 170,
                    child: Image.asset(
                      'assets/icons/fluttervuoto.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/python');
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xAEFDCB4F),
                child: Center(
                  child: SizedBox(
                    width: 170,
                    height: 170,
                    child: Image.asset(
                      'assets/icons/pythonvuoto.png',
                      fit: BoxFit.contain,
                    ),
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
